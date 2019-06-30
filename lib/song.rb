class Song 
  attr_accessor:name 
  attr_reader :artist 
  
  
  def initialize(name)
    @name = name 
  end
  
  def artist=(artist)
    @artist = artist
  end
  
   def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
    
  def self.new_by_filename(file_name)
      self.name = file_name.split(" - ")[0]
      self.artist.name = file_name.split(" - ")[1]
  end
end
end
  