class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    add_song(Song.new(song_name))
  end

  def self.song_count
    # returns the total number of songs associated to all existing artists
    # select all songs with artists
    songs_with_artists = Song.all.select do |song|
      !!song.artist
    end
    songs_with_artists.length
  end
  
end