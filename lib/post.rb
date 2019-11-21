class Post
attr_accessor :author, :title
@@all = []

def initialize(title)
    @title = title 
    @author = author
    save
end 

def save
   @@all << self 
end 

def self.all 
    @@all 
end 

def author_name
 author.name
end 
end 