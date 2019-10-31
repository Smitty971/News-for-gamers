class NewsForGamers::Article

        @@all = []

        attr_accessor :title, :tag, :author, :description

        def initialize(title, tag, author, description)
            @title = title
            @tag = tag
            @author = author
            @description = description
        end

        def self.all
            @@all
        end

        def self.reset_all
            @@all.clear
        end
    end
end 