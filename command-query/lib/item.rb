class Item
  attr_accessor :name, :price, :discount

  def initialize(name, hash)
    @name = name
    @price = hash[:price]
    @discount = hash[:discount]
  end

  def name
    @name
  end
end
