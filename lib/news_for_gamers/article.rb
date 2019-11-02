
class NewsForGamers::Article

        @@all = []

        attr_accessor :title, :tag, :author, :description, :scraper, :attributes

        def initialize(attributes)
            #trying to pull title data from the hash into an instance variable.
          attributes[1]= @title
          attributes[2]= @author
          attributes[3]= @description
          attributes[4]= @tag
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

