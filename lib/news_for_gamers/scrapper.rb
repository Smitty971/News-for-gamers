require "nokogiri"
require "open-uri"
require "pry"
module NewsForGamers
    
end
class NewsForGamers::Scrapper
    attr_accessor :link, :title, :author, :description, :tag

        def self.create_article
        html = open('https://www.pcgamer.com/news/')
            article = Nokogiri::HTML(html)
            article.css("div.listingResult.small:not(.sponsored-post)").each do |post|
                #this contains the list of articles
                articles = post.css("article").text
                pcgamer = post.text.strip.split(/\n+/)

                @@attributes = {
                    :link => post.css("a").first.attr("href"),
                    :title => pcgamer[0], 
                    :author => pcgamer[2],
                    :description => pcgamer[4],
                    :tag => pcgamer[3]
                }
                NewsForGamers::Article.new(attributes)
                binding.pry
                
            end
        end
        #testing output
        self.create_article
             #NewsForGamers::Scrapper.create_article

        # def self.create_post
        #     html = open(self.link)
        #     lnk = Nokogiri::HTML(html)
        #     lnk.css("#main > article").each do |content|
        #         desc = content.css("#article-body")
        #         binding.pry
        #         puts desc.text
        #     end
        # end
end

