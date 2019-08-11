require "pry"
class Song
    attr_reader :name
    attr_accessor :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
   
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        # @@artist_count[artist]=count

    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.count
        @@count
    end
    
    def self.genre_count
        genre_count = {}
        @@genres.each do |genre| 
            if genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each { |artist|
        if artist_count[artist]
            artist_count[artist] += 1
        else
            artist_count[artist] = 1
        end
    }
    artist_count
    end


    # binding.pry
end

# lucifer = Song.new("Lucifer", "Jay-Z", "rap" )
# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")