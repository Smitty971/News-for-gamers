require "nokogiri"
require "open-uri"
require "pry"
module NewsForGamers
    
end
class NewsForGamers::Scrapper
        def initialize(link)
            @link = link
        end

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
                author = pcgamer[2]
                description = pcgamer[4]
                tag = pcgamer[3]
                #binding.pry
            end
        end
        #testing output
        #create_article


        def self.create_post(link=nil)
            html = open('https://www.pcgamer.com/black-future-88-release-date/')
            link = Nokogiri::HTML(html)
            link.css("a").first.attr("href").each do |content|
                desc = content.css("#article-body")
                binding.pry
            end
        end
        create_post()
end