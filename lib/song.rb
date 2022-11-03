require 'pry'

class Song 
    @@count = 0 
    @@artists = []
    @@genres = []

    attr_reader :name, :artist, :genre

    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count 
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_hash = Hash.new
        @@genres.each do |genre|
            if !(genre_hash.include? genre)
                # new_hash = {"#{genre}": 1}
                genre_hash[genre] = 1
            else
                genre_hash[genre] += 1
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = Hash.new
        @@artists.each do |artist|
            if !(artist_hash.include? artist)
                # new_hash = {"#{artist}": 1}
                artist_hash[artist] = 1
            else
                artist_hash[artist] += 1
            end
        end
        artist_hash
    end
end

