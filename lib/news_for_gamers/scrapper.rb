require "nokogiri"
require "open-uri"
require "pry"
module NewsForGamers
    
end
class NewsForGamers::Scrapper

        def self.create_article
        html = open('https://www.pcgamer.com/news/')
            article = Nokogiri::HTML(html)
            article.css("div.listingResult.small:not(.sponsored-post)").each do |post|
                #this contains the list of articles
                articles = post.css("article").text
                link = post.css("a").first.attr("href")
                pcgamer = post.text.strip.split(/\n+/)
                puts post.text.strip.split(/\n+/)
                puts link
                title = pcgamer[0]
                #date = pcgamer[]
                author = pcgamer[2]
                description = pcgamer[4]
                tag = pcgamer[3]
            end

        

        end
        create_article




    # def create_news(link)
    #     link.each do |text|
    #     #post = link.css("p") 
    #     end
    # end
    #content > section > div > div.listingResult.small.result2
end