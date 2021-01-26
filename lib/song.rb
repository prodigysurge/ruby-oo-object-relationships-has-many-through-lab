
class Song

    @@all = []

    attr_accessor :name
    attr_reader :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end

    def say_hi
        puts "hi"
    end
end