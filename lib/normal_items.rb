require './item.rb'

class Normal_Items < Item
  attr_reader :item

  MAX_QUALITY = 50
  MIN_QUALITY = 0

  def initialize(item)
    @item = item
  end

  def update
    change_sell_in
    change_quality
  end

  private

    def change_sell_in
      @sell_in -= 1
    end

    def change_quality
      if @item.sell_in > 0
        @item.quality -= 1
      else
        @item.quality -= 2
      end
    end

end
