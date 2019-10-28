
def create article
    html = File.read('https://gameranx.com/updates/')
    article = Nokogiri::HTML(html)

    article.css("#content").each do |post|
        #this contains the list of articles
        # title = article.css("h1")
        # date = article.css("time")
        # link = article.css("")
        post = article.css("article")
        link = article.css(".article-link")




end

def create post(link)
    post = link.css("p") 
end