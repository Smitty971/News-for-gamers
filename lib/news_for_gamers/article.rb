
class Article

        @@all = []

        attr_accessor :link, :title, :tag, :author, :description, :scraper, :attributes

        def initialize(attributes)
        
            #trying to pull title data from the hash into an instance variable.
            @link = attributes[0]
            binding.pry
            @title = attributes[1]
            @author = attributes[2]
            @description  = attributes[3]
            @tag =  attributes[4]
          attributes.each {|key, value| self.send(("#{key}= "), value)}
          binding.pry
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

