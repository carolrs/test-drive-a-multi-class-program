class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    fail "No title." if title.empty?
    fail "No contents." if contents.empty?
    # ...
    @title = title 
    @contents = contents
    @next_chunk = 0
  end

  def title
    @title
    # Returns the title as a string
  end

  def contents
    @contents
    # Returns the contents as a string
  end

  def count_words
    @contents.split.size
    # Returns the number of words in the contents as an integer
  end

  # reading_time is how long it takes for the user to read the entry in minutes
  def reading_time(wpm) 
    (count_words / wpm.to_f).ceil
    # wpm is an integer representing
    # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
    # if entry contains 500 words and the user can read 100 wpm
    # then the reading_time is 5 minutes 
  end

  def reading_chunk(wpm, minutes) 
    chunk_size = wpm * minutes
    start = @next_chunk
    stop = start + chunk_size
    @next_chunk = stop

    if start >= count_words
        @next_chunk = 0
        return "You finished the reading"
    end
    @contents.split[start...stop].join(" ")
    # `wpm` is an integer representing the number
    # of words the user can read per minute
    # `minutes` is an integer representing the
    # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end