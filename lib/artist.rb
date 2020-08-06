require 'pry'

class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song_instance|
            song_instance.artist == self
        end
    end

    def add_song(song_to_add)
        song_needed = Song.all.find do |song_instance|
            song_to_add == song_instance
        end
            song_needed.artist = self
        
        # binding.pry
    end

    def add_song_by_name(song_to_add)
        Song.new(song_to_add).artist =self
        
        # binding.pry
    end

    def self.song_count
        Song.all.length
    end

end


