require "nokogiri"
require "open-uri"
require "pry"


def create_article
    html = open('https://www.pcgamer.com/news/')
    article = Nokogiri::HTML(html)
    #binding.pry
    article.css("div.listingResult.small:not(.sponsored-post)").each do |post|
        #this contains the list of articles
        # title = article.css("h1")
        # date = article.css("time")
        # link = article.css("")
        articles = post.css("article").text
        link = post.css("a").first.attr("href")
        puts post.text.split("\n").first
        puts link
        
    end

    

end
create_article

 

# def create_news(link)
#     link.each do |text|
#     #post = link.css("p") 
#     end
# end
#content > section > div > div.listingResult.small.result2