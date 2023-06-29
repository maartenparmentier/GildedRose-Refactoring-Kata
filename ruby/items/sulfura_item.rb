require_relative 'normal_item'

class SulfuraItem
  include ActsAsItem

  attr_reader :item

  def initialize(item)
    @item = item
  end

  def spend_day_in_shop; end
end
