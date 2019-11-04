

class Scraper
    attr_accessor :link, :title, :author, :description, :tag
        @@all = []
        
    def initialize 
         @link = link 
         @title = title
         @author = author
         @description = description
         @tag = tag   
         create_article
    end

    def create_article
        html = open('https://www.pcgamer.com/news/')
        article = Nokogiri::HTML(html)
        article.css("div.listingResult.small:not(.sponsored-post)").each do |post|
                #this contains the list of articles
        articles = post.css("article").text
        pcgamer = post.text.strip.split(/\n+/)

            attributes = {
                    :link => post.css("a").first.attr("href"),
                    :title => pcgamer[0], 
                    :author => pcgamer[2],
                    :description => pcgamer[4],
                    :tag => pcgamer[3]
                }

                attributes.each {|key, value| self.send(("#{key}="), value)}
                @@all << self
                Article.new(attributes) 
                break if @@all.size > 9
            end
    end


    def self.all
        @@all
    end
    
    def self.reset_all
        @@all.clear
    end
        
  
    
end

