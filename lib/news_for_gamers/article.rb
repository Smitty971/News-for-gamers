
class Article

        @@all = []

        attr_accessor :link, :title, :tag, :author, :description, :scraper, :attributes

        def initialize(attributes)
            Scraper.all.each do |instance => attribute|
            @link = attributes[0]
            @title = attributes[1]
            @author = attributes[2]
            @description  = attributes[3]
            @tag =  attributes[4]
          attributes.each {|key, value| self.send(("#{key}= "), value)}
        end
        


        def self.create_post
            html = open(self.link)
            lnk = Nokogiri::HTML(html)
            lnk.css("#main > article").each do |content|
                desc = content.css("#article-body")
                puts desc.text.strip
                binding.pry
            end
        end

        def self.all
            @@all
        end
        
        def self.reset_all
            @@all.clear
        end

#         attributes.each {|key, value| self.send(("#{key}= "), value)}
#                  puts post.texhttps://us04web.zoom.us/j/725011686?pwd=TDUrVWhZOWVqOWFKbTVsZVU3NFoyUT09t.strip.split(/\n+/)
#                  puts link
end 

