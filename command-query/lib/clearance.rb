class Clearance
  attr_accessor :items

  def initialize
    @items = []
  end

  def <<(item)
    @items << item
  end

  def best_deal
    if @items.empty?
      nil
    else
      @items.sort_by { |a| (a.price - a.discount) }.first.name
    end
  end
end
