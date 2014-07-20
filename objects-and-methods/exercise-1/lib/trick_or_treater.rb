class TrickOrTreater
  attr_accessor :dressed_up_as, :bag

  def initialize(costume)
    @dressed_up_as = costume.style
    @bag = Bag.new
  end

  def has_candy?
    bag.candies.any?
  end

  def candy_count
    bag.candies.size
  end

  def eat
    bag.candies.pop
  end
end
