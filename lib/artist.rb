class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  
  def genres 
    songs.collect {|song| song.genre} 
  end 
  
end 