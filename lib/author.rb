class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select do |post|
      post.author == self
    end
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    add_post(Post.new(post_title))
  end

  def self.post_count
    # returns the total number of posts associated to all existing authors
    # select all posts with authors
    posts_with_authors = Post.all.select do |post|
      !!post.author
    end
    posts_with_authors.length
  end

end