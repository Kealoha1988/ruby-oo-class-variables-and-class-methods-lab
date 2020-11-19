class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count = @@count += 1
        @@artists = @@artists << artist
        @@genres = @@genres << genre
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
        hash = {}
        @@genres.each do |genres|
            if hash[genres]
                hash[genres] += 1
            else
                hash[genres] = 1
            end
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |genres|
            if hash[genres]
                hash[genres] += 1
            else
                hash[genres] = 1
            end
        end
        hash
    end


end