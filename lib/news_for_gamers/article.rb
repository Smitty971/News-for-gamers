class Article

        @@all = []

        attr_accessor :link, :title, :tag, :author, :description, :scraper, :attributes, :user_input

        def initialize(attributes)
            Scraper.all.each do |object|
            @link = object.link
            @title = object.title
            @author = object.author
            @description  = object.description
            @tag =  object.tag
          @@all << self
            end
        end
        


        def self.create_post
            html = open(Article.all["#{Cli.all[0].user_input}".to_i].link)
            lnk = Nokogiri::HTML(html)
            lnk.css("#main > article").each do |content|
                desc = content.css("#article-body")
                puts desc.text.strip
            end
            
        end

        def self.all
            @@all.uniq
        end
        
        def self.reset_all
            @@all.clear
        end
end 

