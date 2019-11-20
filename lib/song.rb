class Song
    @@all = []
    attr_accessor :artist, :name, :genre
    def initialize(name)
        @@all << self
        @name = name
    end
    def artist=(name)
        @artist = name
    end
    def artist
        @artist
    end
    def self.all
        @@all
    end
    def artist_name
        if @artist == nil
            return nil
        else
            @artist.name
        end
    end
end