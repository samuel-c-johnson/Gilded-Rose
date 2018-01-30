require_relative '../gilded_rose.rb'


describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "foo"
    end

    it "reduces the sell in value by 1 each day" do
      item = Item.new("item", 5, 10)
      items = [item]
      gilded_rose = GildedRose.new(items)
      gilded_rose.update_quality
      expect(item.sell_in).to eq(4)
    end

    

  end

end
