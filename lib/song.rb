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
        return @@count 
    end
    
    def self.genres
        unique_genre_array = []
        @@genres.each do |genre|
            if !unique_genre_array.include?(genre)
                unique_genre_array << genre 
            end 
        end
        return unique_genre_array  
    end 

    def self.artists
        unique_artists_array = []
        @@artists.each do |artist|
            if !unique_artists_array.include?(artist)
                unique_artists_array << artist 
            end 
        end 
        return unique_artists_array
    end 

    def self.genre_count
        genre_hash = {}
        
        @@genres.each do |genre|
            if !genre_hash.include?(genre) 
                genre_hash[genre] = 1 
            elsif genre_hash.include?(genre) 
                genre_hash[genre] += 1
            end 
        end 

        return genre_hash 
    end 

    def self.artist_count
        artist_hash = {}

        @@artists.each do |artist|
            if !artist_hash.include?(artist)
                artist_hash[artist] = 1
            elsif artist_hash.include?(artist)
                artist_hash[artist] += 1
            end 
        end 

        return artist_hash 
    end 

end 