class Catalogue
  attr_accessor :products

  def initialize
    @products = []
  end

  def <<(product)
    @products << product
  end

  def cheapest
    if @products.empty?
      nil
    else
      @products.sort_by { |p| p.price }.first.name
    end
  end
end
