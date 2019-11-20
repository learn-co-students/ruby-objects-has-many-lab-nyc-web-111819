require 'pry'
class Artist
	attr_accessor :name, :songs
    attr_reader 

    @@all = []
    
	def initialize (name)
        @name = name
        @songs = []
    end
    
    def add_song (song)
        @songs << song
        song.artist = self
    end

    def songs
        Song.all
    end

    def add_song_by_name (song)
        song = Song.new(song)
        self.add_song(song)
    end

    def self.song_count
        Song.all.size
    end
end