class Artist
    @@all = []

    attr_reader :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        Genre.all.collect{|genre| genre.artists.include?(self)}
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        ouvre = []
        songs.each do |song|
             ouvre << song.genre
        end
        ouvre
    end
end