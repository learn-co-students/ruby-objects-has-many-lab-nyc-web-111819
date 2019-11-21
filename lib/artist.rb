require "pry"
class Artist 
attr_accessor :name 
def initialize(name)
    @name = name
end 

def add_song(song)
    song.artist = self 
end 

def songs
    Song.all.select do |song|
        song.artist == self 
    end
end 

def self.song_count
        Song.all.length
end

def add_song_by_name(song_name)
    # Song.all.each do |song| 
    #     if song.name = song_name 
    # @songs <<  song_name 
    # song.artist = self  
    # end 
    song = Song.new(song_name)
    song.artist = self
    # binding.pry 
end 
end 