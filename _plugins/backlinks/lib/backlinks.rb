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
        # Normalize the target URLs to ensure consistent matching
        normalized_url = normalize_url(doc.url)
        target_urls[normalized_url] = doc
      end
      
      # Debug: print all target URLs
      puts "All possible target URLs (#{target_urls.keys.count}):"
      target_urls.keys.sort.each do |url|
        puts "  - #{url}"
      end
      
      # For each document, find outgoing links to other documents
      all_docs.each do |source_doc|
        next unless source_doc.respond_to?(:content) && source_doc.content && source_doc.respond_to?(:url)
        
        source_content = source_doc.content
        modified_content = source_content.dup
        content_modified = false
        
        # Find HTML links: <a href="url">text</a>
        html_link_matches = source_content.to_enum(:scan, /<a[^>]*href=["']([^"']+)["'][^>]*>(.*?)<\/a>/im).map { Regexp.last_match }
        
        html_link_matches.reverse_each do |match|
          full_match = match[0]
          href = match[1]
          link_text = match[2]
          
          # For HTML links
          normalized_href = normalize_href(href, source_doc.url, site.baseurl.to_s)
          
          # Generate a unique ID for this link (for ALL links, not just internal ones)
          link_id = if href.start_with?('http://') || href.start_with?('https://')
            # For external links, use domain name in ID
            domain = href.match(%r{^https?://([^/]+)})[1] rescue "external"
            "link-to-#{domain.gsub(/[^\w\-]/, '-')}"
          else
            # For internal links
            "link-to-#{normalized_href.gsub(/[^\w\-]/, '-').gsub(/-+/, '-')}"
          end
          
          # Add incrementing number to make IDs unique within document
          link_id = "#{link_id}-#{html_link_matches.size - html_link_matches.find_index(match)}"
          
          # Replace the link with one that has an ID
          if !full_match.include?(' id=')
            new_link = full_match.sub(/<a\s/, "<a id=\"#{link_id}\" ")
            modified_content.sub!(full_match, new_link)
            content_modified = true
          end
          
          # Only process backlink data for internal site links
          if target_urls.key?(normalized_href) && normalized_href != normalize_url(source_doc.url)
            process_link(site, target_urls, backlinks_detailed, source_doc, href, link_text, source_content, snippet_char_length, ellipsis)
          end
        end
        
        # Update the document content if modified
        if content_modified && source_doc.respond_to?(:content=)
          source_doc.content = modified_content
          puts "Modified content for #{source_doc.url} with link IDs"
        end
        
        # Process Markdown links separately for backlinks (without modifying the content)
        markdown_link_matches = source_content.to_enum(:scan, /\[([^\]]+)\]\(([^)]+)\)(\{[^}]*\})?/).map { Regexp.last_match }
        
        markdown_link_matches.reverse_each do |match|
          full_match = match[0]
          link_text = match[1]
          href = match[2]
          attrs = match[3] || ""
          
          normalized_href = normalize_href(href, source_doc.url, site.baseurl.to_s)
          
          # Generate a unique ID for this link (for ALL links, not just internal ones)
          link_id = if href.start_with?('http://') || href.start_with?('https://')
            # For external links, use domain name in ID
            domain = href.match(%r{^https?://([^/]+)})[1] rescue "external"
            "link-to-#{domain.gsub(/[^\w\-]/, '-')}"
          else
            # For internal links
            "link-to-#{normalized_href.gsub(/[^\w\-]/, '-').gsub(/-+/, '-')}"
          end
          
          # Add incrementing number to make IDs unique within document
          link_id = "#{link_id}-#{markdown_link_matches.size - markdown_link_matches.find_index(match)}"
          
          # Add ID attribute to the link if it doesn't already have one
          if !attrs.include?(' id=') && !attrs.include?('#')
            new_attrs = attrs.empty? ? "{##{link_id}}" : attrs.sub(/\{/, "{##{link_id} ")
            new_link = "[#{link_text}](#{href})#{new_attrs}"
            modified_content.sub!(full_match, new_link)
            content_modified = true
          end
          
          # Only process backlink data for internal site links
          if target_urls.key?(normalized_href) && normalized_href != normalize_url(source_doc.url)
            process_link(site, target_urls, backlinks_detailed, source_doc, href, link_text, source_content, snippet_char_length, ellipsis)
          end
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
          'snippet' => snippet || "[No snippet available]",
          'id' => "backlink-#{source_doc.url.gsub(/[^\w\-]/, '-').gsub(/-+/, '-')}"
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
      
      # Normalize trailing slashes (remove them)
      normalize_url(href)
    end
    
    def normalize_url(url)
      # Ensure trailing slash (except for root which already has one)
      url = url + '/' unless url.end_with?('/') || url == '/'
      url
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