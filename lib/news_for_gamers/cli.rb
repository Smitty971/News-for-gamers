
    class Cli
    #cli class tells the scrapper to scrape, scrape articles, make articles with scraped data
        attr_accessor :article, :scraper, :attributes

        # def initialize(title, tag, author, description)
        #     @title = title
        #     @tag = tag
        #     @author = author
        #     @description = description
        # end

        
        # menu = [
        # Article.new(),
        # Article.new(),
        # Article.new(),
        # Article.new(),
        # Article.new(),
        # Article.new(),
        # Article.new(),
        # Article.new(),
        # Article.new(),
        # Article.new()
        # ]
        
        
        

        def call
            puts "12"
            Scraper.create_article
            #binding.pry
            puts "-------------------------------------------------------------------------------".black
            puts "--Welcome to News for Gamers. Your one stop shop for the latest gaming news!!--".red
            puts "-------------------------------------------------------------------------------".black
            #NewsForGamers::Scraper.create_post
            start
        end

        def start
            puts "Here's the HOTTEST NEWS!!!!".red
            puts "*Oddly placed whoosing noises*".green
            puts "Whoosh whoosh whoosh BAM".green
            #news
            menu
        end

        # user_input = number_to_index(gets.chomp)
        # if !user_input.between?(0, menu.size-1)
        #     puts "Error input not valid. Try again.".red
        # elsif
        #     selection(user_input)
        #     puts puts "Would you like to see more facts or exit program? Enter M for menu.".red
        #     input = gets.strip.downcase
        #     input == "m"
        #     start
        # end
     end
