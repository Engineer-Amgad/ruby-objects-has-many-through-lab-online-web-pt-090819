class Genre 
  
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    save 
  end 
  
  def save 
    @@all << self
  end 
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end 
    
end 