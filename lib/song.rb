class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count+=1
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
        counter = {}
        @@genres.each do |genre|
            counter[genre] = counter[genre] ? counter[genre]+=1 : 1
        end
        counter
    end

    def self.artist_count
        counter = {}
        @@artists.each do |artist|
            counter[artist] = counter[artist] ? counter[artist]+=1 : 1
        end
        counter
    end
end