require 'item'

class AgedBrie
  MAX_QUALITY = 50


  def update_quality
    @sell_in > 0 && @quality < MAX_QUALITY ? @quality += 1 : @quality
  end

end
