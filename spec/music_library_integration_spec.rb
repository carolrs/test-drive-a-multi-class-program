require 'music_library'
require 'track'

describe MusicLibrary do
  context "given a title and format" do 
    it"should return all" do 
      track_1 = Track.new("Carte Blanche", "Veracocha")
      track_2 = Track.new("Synaesthesia", "The Thrillseekers")
      library = MusicLibrary.new
      library.add(track_1)
      library.add(track_2)
      expect(library.all).to eq [track_1, track_2]
    end
  
    it "should search by title" do
      track_1 = Track.new("Carte Blanche", "Veracocha")
      track_2 = Track.new("Synaesthesia", "The Thrillseekers")
      library = MusicLibrary.new
      library.add(track_1)
      library.add(track_2)
      expect(library.search_by_title("Carte")).to eq [track_1] 

    end

    it "should search by substring" do
      track_1 = Track.new("Carte Blanche", "Veracocha")
      track_2 = Track.new("Synaesthesia", "The Thrillseekers")
      library = MusicLibrary.new
      library.add(track_1)
      library.add(track_2)
      expect(library.search_by_title("aes")).to eq [track_2] 
    end

    it "should search by substring" do
      track_1 = Track.new("Carte Blanche", "Veracocha")
      track_2 = Track.new("Synaesthesia", "The Thrillseekers")
      library = MusicLibrary.new
      library.add(track_1)
      library.add(track_2)
      expect(library.search_by_title("zzzz")).to eq [] 
    end
  end
end