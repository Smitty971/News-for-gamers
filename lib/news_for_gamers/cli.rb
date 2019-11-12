
class Cli
    #cli class tells the scrapper to scrape, scrape articles, make articles with scraped data
        attr_accessor :article, :scraper, :user_input

        @@all = []

        def menu 
        Article.all.each.with_index(1) do |content, number|
           puts "#{number}. #{content.title} Tag: #{content.tag} By: #{content.author} #{content.description}"
           break if number > 9
            end
        end
           
        def call
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
            puts menu
               self.user_input = user_input = number_to_index(gets.chomp)
               @@all << self
            if user_input.between?(12, 100)
                puts "Error input not valid. Try again.".red
                start
            elsif
                selection(user_input)
                puts "Would you like to see more articles or exit the program? Enter M for menu or enter 11 to exit when in the menu.".red
                input = gets.strip.downcase
                input == "m"
                start
            end
        end

        def self.all 
            @@all
        end

        def self.reset_all
            @@all.clear
        end

     def selection(user_input)
        case user_input
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
            Article.create_post
        when 11
            puts "Goodbye".red
        else 
            start
        end
    end

    def number_to_index(user_input)
        user_input.to_i 
    end
end

