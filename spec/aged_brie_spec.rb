require_relative '../lib/aged_brie.rb'

describe AgedBrie do

  it 'Increases in quality with time' do
    item = AgedBrie.new('Breeeeeee', 10, 10)
    item.update_quality
    expect(item.quality).to eq(11)
  end
end
