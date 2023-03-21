require 'diary'
require 'diary_entry'

RSpec.describe "Diary Library Integration" do
  it "gets all diary entries" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("Title", "1 2 3 4 5")
    diary_entry_2 = DiaryEntry.new("Title2", "A B C D E")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.all).to eq [diary_entry_1, diary_entry_2]
  end

  it "returns count words from diary" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("Title", "1 2 3 4 5")
    diary_entry_2 = DiaryEntry.new("Title2", "A B C D E")
    diary_entry_3 = DiaryEntry.new("Title3", "F G H I J")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    diary.add(diary_entry_3)
    expect(diary.count_words).to eq 15
  end

  it "returns reading time in minutes" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("Title", "1 2 3 4 5")
    diary_entry_2 = DiaryEntry.new("Title2", "A B C D E")
    diary_entry_3 = DiaryEntry.new("Title3", "F G H I J")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    diary.add(diary_entry_3)
    expect(diary.reading_time(4)).to eq 4
  end

  it "returns closest entry" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("Title", "1 2 3 4 5")
    diary_entry_2 = DiaryEntry.new("Title2", "A B C")
    diary_entry_3 = DiaryEntry.new("Title3", "F G H I J k l")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    diary.add(diary_entry_3)
    expect(diary.find_best_entry_for_reading_time(4,1)).to eq diary_entry_2
  end

  it "returns closest entry" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("Title", ("1 2 3 4 5 6 7") * 2)
    diary_entry_2 = DiaryEntry.new("Title2", ("A B C D") * 2)
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect {diary.find_best_entry_for_reading_time(6,1) }.to raise_error "No match found"
  end
 end


 #expect(result.title).to eq "Title2"
 #expect(result.contents).to eq "A B C"