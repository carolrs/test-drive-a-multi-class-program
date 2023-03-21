class Track
  def initialize(title, artist) # title and artist are both strings
    @title = title
    @artist = artist
  end

  def title
    @title
    # Returns the title as a string
  end

  def format
      @title  + " by " + @artist
    # Returns a string of the form "TITLE by ARTIST"
  end
end