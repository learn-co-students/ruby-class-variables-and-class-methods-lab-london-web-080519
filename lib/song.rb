class Song 

    @@artists = []
    @@genres = []
    @@count = 0

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@artists << artist
        @@genres << genre

        @@count += 1
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
        #evaluate @@genres
        count_genres = {}
        #@@genre[key] is your genre
        @@genres.map {|item| 

        if count_genres.has_key?(item)
            count_genres[item] += 1
        else
            count_genres[item] = 1
        end
    }
        ##@@genre => how many times it appears
        count_genres
    end

    def self.artist_count
         count_artists = {}
          @@artists.map {|item| 
  
          if count_artists.has_key?(item)
              count_artists[item] += 1
          else
              count_artists[item] = 1
          end
      }
          count_artists
    end
end