require_relative 'normal_item'
require_relative '../acts_as_item'

class BackstagePassItem
  include ActsAsItem

  attr_reader :item

  def initialize(item)
    @item = item
  end

  def spend_day_in_shop
    decrease_sell_in_day
    return item.quality = 0 if expired?

    increase_quality
    increase_quality if item.sell_in < 10
    increase_quality if item.sell_in < 5

    keep_quality_upper_limit_in_bounds
  end
end
