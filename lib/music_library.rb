class MusicLibrary
  def initialize
    @library = []
    # ...
  end

  def add(track) 
    @library << track
    # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
  end

  def all
    return @library
    # Returns a list of track objects
  end
  
  def search_by_title(keyword) 
    @library.select { |track|
      track.title.include?(keyword)
    }

    
    #selec return new list
  
    # keyword is a string
    # Returns a list of tracks with titles that include the keyword
  end
end