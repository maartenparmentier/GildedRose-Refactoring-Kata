module ActsAsItem
  def decrease_sell_in_day
    item.sell_in -= 1
  end

  def decrease_quality
    item.quality -= 1
  end

  def increase_quality
    item.quality += 1
  end

  def keep_quality_lower_limit_in_bounds
    item.quality = GildedRose::QUALITY_LOWER_LIMIT if item.quality < GildedRose::QUALITY_LOWER_LIMIT
  end

  def keep_quality_upper_limit_in_bounds
    item.quality = GildedRose::QUALITY_UPPER_LIMIT if item.quality > GildedRose::QUALITY_UPPER_LIMIT
  end

  def expired?
    item.sell_in.negative?
  end
end
