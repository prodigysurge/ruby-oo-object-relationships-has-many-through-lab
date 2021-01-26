class Genre

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all do |song|
            song.artist == self
        end
    end

    def genres
        songs.map(&:genre)
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def artists
        songs.map(&:artist)
    end




end
