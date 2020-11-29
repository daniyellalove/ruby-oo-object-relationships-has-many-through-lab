class Genre
    attr_reader :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      save
    end
  
    def save
      self.class.all << self
    end
  
    def find_songs
      Song.all.select do |song|
        song.genre == self
      end
    end
  
    def songs
      find_songs
    end
  
    def artists
      artists = []
  
      find_songs.each do |song|
        artists << song.artist
      end
      artists
    end
  
    def self.all
      @@all
    end
  
  end
