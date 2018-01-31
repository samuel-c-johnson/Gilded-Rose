require 'item'

class NormalItem < Item
  # attr_reader :item
  #
  # MAX_QUALITY = 50
  # MIN_QUALITY = 0

  # def initialize(item)
  #   @item = item
  # end

  def update_quality
    @sell_in > 0 ? @quality -= 1 : @quality -= 2
  end

#   private
#
#     def change_sell_in
#       @item.sell_in -= 1
#     end
#
#     def change_quality
#       if @item.sell_in > 0
#         @item.quality -= 1
#       else
#         @item.quality -= 2
#       end
#       minimum_quality
#     end
#
#     def minimum_quality
#       if @item.quality <= MIN_QUALITY
#         @item.quality = MIN_QUALITY
#       end
#     end
#
end
