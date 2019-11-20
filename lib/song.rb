require 'pry'
class Song
	attr_accessor :artist, :name
    attr_reader
    
    @@all = []

	def initialize (name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def artist_name
        @artist ? @artist.name : nil
    end

end