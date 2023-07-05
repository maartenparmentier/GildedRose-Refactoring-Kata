require_relative '../acts_as_item'

class NormalItem
  include ActsAsItem

  attr_reader :item

  def initialize(item)
    @item = item
  end

  def spend_day_in_shop
    decrease_sell_in_day

    decrease_quality
    decrease_quality if expired?

    keep_quality_lower_limit_in_bounds
    keep_quality_upper_limit_in_bounds
  end
end
