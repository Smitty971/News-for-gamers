require "pry"
module NewsForGamers
    


    class NewsForGamers::Cli
    #cli class tells the scrapper to scrape, scrape articles, make articles with scraped data
        attr_accessor :article, :scrapper

        def initialize(title, tag, author, description)
            @title = title
            @tag = tag
            @author = author
            @description = description
            binding.pry
        end

        # def news
        # menu = [
        # 1. Article.new(title, tag, author, description),
        # 2. Article.new(title, tag, author, description),
        # 3. Article.new(title, tag, author, description),
        # 4. Article.new(title, tag, author, description),
        # 5. Article.new(title, tag, author, description),
        # 6. Article.new(title, tag, author, description),
        # 7. Article.new(title, tag, author, description),
        # 8. Article.new(title, tag, author, description),
        # 9. Article.new(title, tag, author, description),
        # 10. Article.new(title, tag, author, description)
        # ]
        
        # end
        

        def call
            NewsForGamers::Scrapper.create_article
            puts "-------------------------------------------------------------------------------".black
            puts "--Welcome to News for Gamers. Your one stop shop for the latest gaming news!!--".red
            puts "-------------------------------------------------------------------------------".black
            #create_article
            start
        end

        def start
            puts "Here's the HOTTEST NEWS!!!!".red
            puts "*Oddly placed whoosing noises*".purple
            puts "Whoosh whoosh whoosh BAM".purple
            news
        end

    #     user_input = number_to_index(gets.chomp)
    #     if !user_input.between?(0, menu.size-1)
    #         puts "Error input not valid. Try again.".red
    #     elsif
    #         selection(user_input)
    #         puts 
    #     end
     end
end