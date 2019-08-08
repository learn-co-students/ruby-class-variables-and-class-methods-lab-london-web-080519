#require "pry"

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist

        #@@genre_count[genre] ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1

        if @@genre_count[genre]# = ture#== genre_count[genre]
            @@genre_count[genre] += 1
        else
            @@genre_count[genre] = 1
        end

        if @@artist_count[artist]# = true
            @@artist_count[artist] += 1
        else
            @@artist_count[artist] = 1
        end

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
       @@genre_count
    end

    def self.artist_count
        @@artist_count
    end

end


#JJF = Song.new("Jumping Jack Flash","Stones",":Rock" )
#AJJF = Song.new("AJumping Jack Flash","AStones",":ARock" )
#BJJF = Song.new("BJumping Jack Flash","Stones",":ARock" )
#binding.pry
#0








