require_relative '../lib/normal_item.rb'

describe NormalItem do

  it "reduces the sell in value by 1 each day" do
    items = [NormalItem.new('normal_item', 10, 10)]
    GildedRose.new(items).update_quality
    expect(items[0].sell_in).to eq 9
  end


  it "reduces the item quality by 1 each day" do
    items = [NormalItem.new('normal_item', 10, 10)]
    GildedRose.new(items).update_quality
    expect(items[0].quality).to eq 9
  end


#
#   it "maxes out the item quality at 0" do
#     items = [Item.new("item", 1, 1)]
#     gilded_rose = GildedRose.new(items)
#     gilded_rose.update_quality
#     gilded_rose.update_quality
#     expect(items[0].quality).to eq(0)
#   end
#
  it "reduction in item quality doubles after sell by date has passed" do
    items = [NormalItem.new("normal_item", 0, 10)]
    GildedRose.new(items).update_quality
    expect(items[0].quality).to eq(8)
  end
end
# end
