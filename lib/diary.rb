class Diary
  def initialize
    @diary_entries = []
  end

  def add(entry) 
    @diary_entries << entry
    # entry is an instance of DiaryEntry
    # Returns nothing
  end

  def all
    @diary_entries
    # Returns a list of instances of DiaryEntry
  end

  def count_words
    @diary_entries.map {|entry| entry.count_words }.sum
    
    #return an array of count words of all entries and them sum the amount.
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
  end

  def reading_time(wpm) 
    (count_words / wpm.to_f).ceil

    # wpm is an integer representing
    # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
  end

  def find_best_entry_for_reading_time(wpm, minutes)      
    max_words_can_read = wpm * minutes
    closest_num_words = 0
    best_entry = nil 
    @diary_entries.each do |entry|
      count_words = entry.count_words
      if count_words <= max_words_can_read && count_words > closest_num_words 
        best_entry = entry
        closest_num_words = count_words
      end
    end
    fail "No match found" if best_entry.nil?
    best_entry
    
    # the closest_time stores closest reading_time that is not greater than minutes
    # best_match is the entry that we are iterating when we find the closest_time


        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end