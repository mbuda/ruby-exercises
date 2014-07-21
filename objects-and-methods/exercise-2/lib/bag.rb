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

  def grab(candy)
    grabbed = candies.find{ |c| c.type == candy }
    candies.delete(grabbed)
  end

  def take(int)
    if int == 1
      candies.pop
    else
      candies.pop(int)
    end
  end
end
