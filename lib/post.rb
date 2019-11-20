class Post
    @@all = []
    attr_accessor :author, :title
    def initialize(title)
        @@all << self
        @title = title
    end
    def author=(name)
        @author = name
    end
    def author
        @author
    end
    def self.all
        @@all
    end
    def author_name
        if @author == nil
            return nil
        else
            @author.name
        end
    end
end