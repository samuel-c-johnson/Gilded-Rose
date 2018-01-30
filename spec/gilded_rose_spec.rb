require_relative '../gilded_rose.rb'


describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "foo"
    end

    it 'equals 4' do
      maths = 2+2
      expect(maths).to eq(4)
    end
  end

end
