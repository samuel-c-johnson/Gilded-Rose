require_relative '../lib/legendary_item.rb'

describe LegendaryItem do

  it 'does not reduce in quality each day' do
    items = [LegendaryItem.new('Sulfuras, Hand of Ragnaros', 10, 50)]
    GildedRose.new(items).update_quality
    expect(items[0].quality).to eq(50)
  end
end
