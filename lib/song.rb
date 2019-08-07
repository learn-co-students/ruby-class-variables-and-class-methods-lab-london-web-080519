
class Song
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    attr_accessor :name, :artist, :genre

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count_hash = {}
        @@genres.uniq.each do |item|
            genre_count_hash[item] = @@genres.count(item)
        end
        genre_count_hash
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        artist_count_hash = {}
        @@artists.uniq.each do |item|
            artist_count_hash[item] = @@artists.count(item)
        end
        artist_count_hash
    end
end
