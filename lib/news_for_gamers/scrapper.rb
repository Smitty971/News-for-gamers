require "nokogiri"
require "open-uri"
require "pry"


def create_article
    html = open('https://www.pcgamer.com/news/')
    article = Nokogiri::HTML(html)

    article.css("div.listingResult.small").each do |post|
        #this contains the list of articles
        # title = article.css("h1")
        # date = article.css("time")
        # link = article.css("")
        articles = post.css("article").text
        link = post.css("a").first.attr("href")
        puts post.text.split("\n")
        puts link
        
    end

    return create_article

end


 

# def create_news(link)
#     link.each do |text|
#     #post = link.css("p") 
#     end
# end