class NewsForGamers::Article
    
    attr_accessor :title, :tag, :author, :description
    
    def initialize(title, tag, author, description)
        @title = title
        @tag = tag
        @author = author
        @description = description
    end




end 