
#sond class

class Song 
     attr_accessor :name, :artist, :genre

     # class variable for count
     @@count = 0
     @@genres = []
     @@artists = []
    def initialize (name, artist, gengre)
        @name = name
        @artist = artist
        @genre = gengre
        @@count += 1
        @@genres << gengre
        @@artists << artist
    end
    #defines the class method count
    def self.count 
        @@count
    end
    #defines Class genre method
    def self.genres
        @@genres.uniq
    end

    #defineing the class artists method
    def self.artists
        @@artists.uniq
    end
    # defining the class method genre_count
    def self.genre_count
        {}
    end
    # defining the genre_count method
    def self.genre_count
        @@genres.tally
    end
    #defines the artits count method
    def self.artist_count
        @@artists.tally
    end
end

mine = Song.new("my_love", "oscar", "bluz")
Song.new("my_love", "oscar", "bluz")
Song.new("my_love", "oscar", "bluz")
Song.new("my_love", "oscar", "bluz")
puts Song.count
puts Song.genres
puts Song.artists

