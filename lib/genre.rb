require 'pry'

class Genre

    attr_accessor :name, :artist, :song

    @@all = []

    def initialize(name)
        @name = name
        @@all<< self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|songs| songs.genre = self}
    
    end

    def artists
        
        songs.map {|song|  song.artist}
        
    end

end