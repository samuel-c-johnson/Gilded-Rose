require_relative '../gilded_rose.rb'


describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "foo"
    end

    describe "normal items" do

      it "reduces the sell in value by 1 each day" do
        items = [Item.new("item", 5, 10)]
        GildedRose.new(items).update_quality
        expect(items[0].sell_in).to eq(4)
      end

      it "reduces the item quality by 1 each day" do
        items = [Item.new("item", 5, 10)]
        GildedRose.new(items).update_quality
        expect(items[0].quality).to eq(9)
      end

      it "maxes out the item quality at 0" do
        items = [Item.new("item", 1, 1)]
        gilded_rose = GildedRose.new(items)
        gilded_rose.update_quality
        gilded_rose.update_quality
        expect(items[0].quality).to eq(0)
      end

      it "reduction in item quality doubles after sell by date has passed" do
        items = [Item.new("item", 0, 10)]
        GildedRose.new(items).update_quality
        expect(items[0].quality).to eq(8)
      end
    end

    describe "legendary items" do

      it "Legendary items do not reduce in quaility" do
        items = [Item.new("Sulfuras, Hand of Ragnaros", 50, 50)]
        GildedRose.new(items).update_quality
        expect(items[0].quality).to eq(50)
      end

      it "Legendary items sell by date does not change" do
        items = [Item.new("Sulfuras, Hand of Ragnaros", 50, 50)]
        GildedRose.new(items).update_quality
        expect(items[0].sell_in).to eq(50)
      end
    end

    describe "Aged brie" do

      it "increases in quality over time" do
        items = [Item.new("Aged Brie", 10, 10)]
        GildedRose.new(items).update_quality
        expect(items[0].quality).to eq(11)
      end

      it "its quality increases by 2 after passing the sell by date" do
        items = [Item.new("Aged Brie", 0, 10)]
        GildedRose.new(items).update_quality
        expect(items[0].quality).to eq(12)
      end

      it "should have a max quality of 50" do
        items = [Item.new("Aged Brie", 6, 50)]
        GildedRose.new(items).update_quality()
        expect(items[0].quality).to eq 50
        expect(items[0].sell_in).to eq 5
      end
    end


  end

end
