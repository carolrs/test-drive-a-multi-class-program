require 'track'

  describe Track do
    context "given a title and format" do 
      it"should return title" do 
        track = Track.new("Carte Blanche", "Veracocha")
        expect(track.title).to eq "Carte Blanche"  
      end

      it"should return format" do 
        track = Track.new("Carte Blanche", "Veracocha")
        expect(track.format).to eq "Carte Blanche by Veracocha"
      end
    end
  end