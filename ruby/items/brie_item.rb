require_relative 'normal_item'
require_relative '../acts_as_item'

class BrieItem
  include ActsAsItem

  attr_reader :item

  def initialize(item)
    @item = item
  end

  def spend_day_in_shop
    decrease_sell_in_day

    increase_quality
    increase_quality if expired?

    keep_quality_upper_limit_in_bounds
  end
end
