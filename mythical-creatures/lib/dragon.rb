class Dragon
  attr_accessor :name, :color, :rider, :hungry, :meals

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @meals = 0
  end

  def hungry?
    @hungry
  end

  def eat
    @meals += 1
    @hungry = false if @meals >=3
  end
end
