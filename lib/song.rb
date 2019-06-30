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

    def self.new_by_filename(file)
    artist_name, song_name = file.split(" - ")
    artist = Artist.find_or_create_by_name(artist_name)
    song = Song.new(song_name)
    song.artist = artist
    artist.add_song(song)
    song
 end
end
end
  