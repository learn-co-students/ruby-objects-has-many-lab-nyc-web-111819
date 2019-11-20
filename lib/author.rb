require 'pry'
class Author
	attr_accessor :name, :posts
	attr_reader

	def initialize (name)
        @name = name
        @posts = []
    end
    
    def posts
        Post.all
    end

    def add_post (post)
        @posts << post
        post.author = self
    end

    def add_post_by_title (title)
        title = Post.new(title)
        self.add_post(title)
    end

    def self.post_count
        Post.all.size
    end
end