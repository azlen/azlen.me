require 'jekyll'
require 'time'
require 'rickshaw'

module Jekyll
    class OGFilter < Liquid::Tag
        def initialize(tag_name, text, tokens)
            super
        end
        
        def render(context)
    
            # This creates an image id hash from the page id in Jekyll
            id = context["page"]["id"].to_sha1
        
            # Check if the file already exists in the 'opengraph' folder, return early if it does
            if(File.exist?("#{Dir.pwd}/opengraph/#{id}.png")) 
                puts "File exists #{Dir.pwd}/opengraph/#{id}.png}"       
            else
                
                # the script to be called with the formatted title, and resolving filename
                # -d '#{context["page"]["last_modified_at"].strftime("%e %B %Y")}'
                script = "node #{Dir.pwd}/opengraph.js -t '#{context["page"]["title"]}' -c '#{context["page"]["context"]}' -d '#{context["page"]["description"]}'  -f '#{Dir.pwd}/opengraph/#{id}.png'"
                
                puts script
                system(script)
            end 
            
            # Get the site variable
            site = context.registers[:site]
        
            # Add the file to the list of static_files needed to be copied to the _site
            site.static_files << Jekyll::StaticFile.new(site, site.source, "/opengraph/", "#{id}.png")
        
            "/opengraph/#{id}.png"
        
        end
    end
end
Liquid::Template.register_tag('og_filter', Jekyll::OGFilter)