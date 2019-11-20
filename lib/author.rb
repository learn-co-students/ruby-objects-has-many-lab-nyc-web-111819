class Author
    attr_accessor :name

    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        Post.all
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title(post)
        new_post = Post.new(post)
        add_post(new_post)
    end

    def self.post_count
        Post.all.length
    end
end