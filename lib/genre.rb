class Genre
    @@all = []

    def self.all
        @@all
    end

    attr_reader :name

    def initialize (name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        roster = []
        songs.each do |song|
             roster << song.artist
        end
        roster
    end
end