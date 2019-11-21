require "pry"
class Artist 
attr_accessor :name 
def initialize(name)
    @name = name
    @songs = []
end 

def add_song(song)
    @songs << song 
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
    Song.all.each do |song| 
        if song.name = song_name 
    @songs <<  song_name 
    song.artist = self  
    end 
    binding.pry 
end 
end 
end 