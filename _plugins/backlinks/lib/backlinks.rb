require 'jekyll'

module Jekyll
  class BacklinksGenerator < Generator
    safe true
    priority :low

    def generate(site)
      # Configuration for the snippet extraction
      snippet_char_length = 150
      ellipsis = "..."

      # Gather all pages and documents
      all_docs = []
      all_docs += site.pages if site.pages
      all_docs += site.documents.select { |doc| doc.respond_to?(:output_ext) && doc.output_ext == ".html" } if site.documents
      
      # Hash to store backlink data: target_url => [ { source_url, source_title, snippet }, ... ]
      backlinks_detailed = Hash.new { |h, k| h[k] = [] }
      
      # Create a lookup table of all potential target URLs
      target_urls = {}
      all_docs.each do |doc|
        next unless doc.respond_to?(:url) && !doc.url.nil?
        target_urls[doc.url] = doc
      end
      
      # For each document, find outgoing links to other documents
      all_docs.each do |source_doc|
        next unless source_doc.respond_to?(:content) && source_doc.content && source_doc.respond_to?(:url)
        
        source_content = source_doc.content
        
        # Find markdown links: [text](url)
        markdown_links = source_content.scan(/\[([^\]]+)\]\(([^)]+)\)/)
        markdown_links.each do |link_text, href|
          process_link(site, target_urls, backlinks_detailed, source_doc, href, link_text, source_content, snippet_char_length, ellipsis)
        end
        
        # Find HTML links: <a href="url">text</a>
        html_links = source_content.scan(/<a[^>]*href=["']([^"']+)["'][^>]*>(.*?)<\/a>/im)
        html_links.each do |href, link_text|
          process_link(site, target_urls, backlinks_detailed, source_doc, href, link_text, source_content, snippet_char_length, ellipsis)
        end
      end
      
      # Add the collected backlinks to the site data
      site.data['backlinks_detailed'] = backlinks_detailed
      Jekyll.logger.info "Backlink Generator:", "Processed #{backlinks_detailed.values.flatten.count} backlinks."
    end
    
    private
    
    def process_link(site, target_urls, backlinks_detailed, source_doc, href, link_text, source_content, snippet_char_length, ellipsis)
      # Clean up the link text (remove HTML tags, normalize whitespace)
      link_text = link_text.gsub(/<[^>]+>/, '').gsub(/\s+/, ' ').strip
      
      # Normalize href
      normalized_href = normalize_href(href, source_doc.url, site.baseurl.to_s)

      puts "normalized_href: #{normalized_href}"
      
      # Check if this is a link to a known document (and not a self-link)
      if target_urls.key?(normalized_href) && normalized_href != source_doc.url
        # Found a backlink
        target_url = normalized_href
        
        # Extract snippet around the link
        snippet = extract_snippet(source_content, link_text, snippet_char_length, ellipsis)
        
        # Store backlink info
        backlink_info = {
          'source_url' => source_doc.url,
          'source_title' => get_doc_title(source_doc),
          'snippet' => snippet || "[No snippet available]"
        }
        
        backlinks_detailed[target_url] << backlink_info
      end
    end
    
    def normalize_href(href, source_url, baseurl)
      # Remove baseurl prefix if present
      href = href.sub(/^#{Regexp.escape(baseurl)}\//, '/')
      
      # Handle relative URLs
      if href.start_with?('.')
        begin
          href = File.expand_path(href, File.dirname(source_url))
        rescue StandardError
          # If expansion fails, use the original href
        end
      end
      
      # Ensure it starts with /
      href = "/" + href unless href.start_with?('/')
      
      href
    end
    
    def extract_snippet(content, link_text, snippet_char_length, ellipsis)
      return nil if link_text.empty? || content.nil?
      
      plain_content = content.gsub(/<[^>]+>/, ' ').gsub(/\s+/, ' ').strip
      context_index = plain_content.index(link_text)
      
      if context_index
        start_index = [0, context_index - (snippet_char_length / 2)].max
        end_index = [plain_content.length - 1, context_index + link_text.length + (snippet_char_length / 2)].min
        
        snippet = plain_content[start_index..end_index].strip
        
        # Add ellipsis if needed
        snippet = ellipsis + snippet if start_index > 0
        snippet = snippet + ellipsis if end_index < plain_content.length - 1
        
        return snippet
      end
      
      nil
    end
    
    def get_doc_title(doc)
      if doc.respond_to?(:data) && doc.data && doc.data['title']
        doc.data['title']
      elsif doc.respond_to?(:name)
        doc.name
      else
        "Untitled"
      end
    end
  end
end 