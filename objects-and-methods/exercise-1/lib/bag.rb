class Bag
  attr_accessor :candies

  def initialize
    self.candies = []
  end

  def empty?
    candies.empty?
  end

  def contains?(candy)
    candies.any? do |c|
      c.type == candy
    end
  end

  def count
    candies.empty? ? 0 : candies.size
  end

  def <<(candy)
    candies << candy
  end
end
