module NewsForGamers
    
end
class NewsForGamers::Cli

    attr_accessor :article
    def initialize(title, tag, author, description)
        @title = title
        @tag = tag
        @author = author
        @description = description
    end

menu = [
    1. Article.new(title, tag, author, description),
    2. Article.new(title, tag, author, description),
    3. Article.new(title, tag, author, description),
    4. Article.new(title, tag, author, description),
    5. Article.new(title, tag, author, description),
    6. Article.new(title, tag, author, description)
]
    binding.pry
end