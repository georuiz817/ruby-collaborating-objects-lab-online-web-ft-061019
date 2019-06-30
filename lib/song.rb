class Song 
  attr_accessor:name 
  attr_reader :artist 
  
  
  def initialize(name)
    @name = name 
  end
  
  def artist=(artist)
    @artist = artist
  end
    
  self.new_by_filename 
  
end