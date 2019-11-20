class Author
    attr_accessor :name, :posts
    def initialize(name)
        @name = name
    end
    def posts
        Post.all.each{|post| post.author == @name}
    end
    def add_post(post)
        post.author = self
    end
    def self.post_count
        Post.all.length
    end
    def add_post_by_title(name)
        newpost = Post.new(name)
        newpost.author=(self)
    end
end