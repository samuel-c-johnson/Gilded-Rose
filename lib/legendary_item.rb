require './item.rb'

class Legendary_Item < Item
  attr_reader :item

  MAX_QUALITY = 80

  def initialize(item)
    @item = item
  end

  

end
