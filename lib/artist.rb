class Artist
    attr_accessor :name, :songs
    def initialize(name)
        @name = name
    end
    def songs
        Song.all.each{|song| song.artist == @name}
    end
    def add_song(song)
        song.artist = self
    end
    def self.song_count
        Song.all.length
    end
    def add_song_by_name(name)
        newsong = Song.new(name)
        newsong.artist=(self)
    end
end