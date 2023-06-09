require 'diary_entry'

  describe DiaryEntry do
    context "If no title is provided" do
      it "when No title is provided" do
      expect {DiaryEntry.new("", "I need some more sleep")}.to raise_error "No title."
      end
    end  
  
    context "If no contents is provided" do
      it "when No contents is provided" do
      expect {DiaryEntry.new("Monday", "")}.to raise_error "No contents."
      end
    end 

    context "Return an entered title or contents" do
      it "return title" do
        entry = DiaryEntry.new("Monday", "Some contents")
        expect(entry.title).to eq "Monday"
      end

      it "return title" do
        entry = DiaryEntry.new("Tuesday", "Some contents")
        expect(entry.title).to eq "Tuesday"
      end

      it "return content" do
        entry = DiaryEntry.new("Tuesday", "Some contents")
        expect(entry.contents).to eq "Some contents"
      end
    end 

    context "#count_words" do
      it "returns number of words as integer" do
        entry = DiaryEntry.new("Monday", "Some contents")
        expect(entry.count_words).to eq 2
      end

      it "returns number of words as integer" do
        entry = DiaryEntry.new("Monday", "Some contents are here")
        expect(entry.count_words).to eq 4
      end
    end

    context "#reading_time" do
      it "returns an estimate of the reading time" do
        entry = DiaryEntry.new("Monday", "Some contents")
        expect(entry.reading_time(2)).to eq 1
      end

      it "returns an estimate of the reading time" do
        entry = DiaryEntry.new("Monday", ("one two three four five six seven eight nine ten ") * 10)
        expect(entry.reading_time(10)).to eq 10
      end
      
    end

    context "#reading_chunk" do
      it "Returns a string with a chunk of the contents that the user could read" do
        entry = DiaryEntry.new("Monday", ("one two three four five six seven eight nine ten ") * 2)
        expect(entry.reading_chunk(5, 1)).to eq "one two three four five"
      end
    end

    describe "#reading_chunk" do
      it "should return the first chunk" do 
        entry =  DiaryEntry.new('Test Chunks', 'A B C D E F G H I J')
        first_chunk = entry.reading_chunk(2, 2)
        expect(first_chunk).to eq("A B C D")
      end
    end
  end