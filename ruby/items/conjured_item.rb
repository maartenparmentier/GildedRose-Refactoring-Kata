require_relative 'normal_item'
require_relative '../acts_as_item'

class ConjuredItem
  include ActsAsItem

  attr_reader :item

  def initialize(item)
    @item = item
  end

  def spend_day_in_shop
    decrease_sell_in_day

    2.times { decrease_quality }
    2.times { decrease_quality } if expired?

    keep_quality_lower_limit_in_bounds
  end
end
