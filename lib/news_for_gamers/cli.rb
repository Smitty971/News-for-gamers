
class Cli
    #cli class tells the scrapper to scrape, scrape articles, make articles with scraped data
        attr_accessor :article, :scraper

        

        
        MENU = [
        #Article.all.each do |content|
           puts "#{object.title} #{object.tag} #{object.author} #{description}"
           puts "============================================================="
           puts "#{object.title} #{object.tag} #{object.author} #{description}"
           puts "============================================================="
           puts "#{object.title} #{object.tag} #{object.author} #{description}"
           puts "============================================================="
           puts "#{object.title} #{object.tag} #{object.author} #{description}"
           puts "============================================================="
           puts "#{object.title} #{object.tag} #{object.author} #{description}"
           puts "============================================================="
           puts "#{object.title} #{object.tag} #{object.author} #{description}"
           puts "============================================================="
           puts "#{object.title} #{object.tag} #{object.author} #{description}"
           puts "============================================================="
           puts "#{object.title} #{object.tag} #{object.author} #{description}"
           puts "============================================================="
           puts "#{object.title} #{object.tag} #{object.author} #{description}"
           puts "============================================================="
           puts "#{object.title} #{object.tag} #{object.author} #{description}"
            #end
           ]
        
        
        
        

        def call
            puts "12"
            Scraper.new
            puts "-------------------------------------------------------------------------------".black
            puts "--Welcome to News for Gamers. Your one stop shop for the latest gaming news!!--".red
            puts "-------------------------------------------------------------------------------".black
            start
        end

        def start
            puts "Here's the HOTTEST NEWS!!!!".red
            puts "*Oddly placed whoosing noises*".green
            puts "Whoosh whoosh whoosh BAM".green
            MENU.each.with_index(1) do |article, number|
            puts "#{number}. #{article}".red 
            end

        user_input = number_to_index(gets.chomp)
        if !user_input.between?(0, menu.size-1)
            puts "Error input not valid. Try again.".red
        elsif
            selection(user_input)
            puts puts "Would you like to see more facts or exit program? Enter M for menu.".red
            input = gets.strip.downcase
            input == "m"
            start
        end
     end

     def selection(user_input)
        case user_input
        when 0
            Article.create_post
        when 1
            Article.create_post
        when 2
            Article.create_post
        when 3
            Article.create_post
        when 4
            Article.create_post
        when 5
            Article.create_post
        when 6
            Article.create_post
        when 7
            Article.create_post
        when 8 
            Article.create_post
        when 9
            Article.create_post
        when 10
            puts "Goodbye"
        else 
            start
        end
    end

    def number_to_index(user_input)
        user_input.to_i - 1
    end
end

