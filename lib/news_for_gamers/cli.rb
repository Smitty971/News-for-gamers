
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
               user_input = gets.chomp
               @@all << self
            if user_input.to_i.between?(1, 10) || user_input == "exit"
                if user_input == "exit"
                    puts "Good Bye".red
                    exit    
                end
                selection(user_input.to_i)
                puts "Would you like to see more articles or exit the program? Enter M for menu or enter 11 to exit when in the menu.".red
                input = gets.strip.downcase
                input == "m"
                start
            else
                puts "Error input not valid. Try again.".red
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
        Article.create_post(user_input - 1)
    end
end

