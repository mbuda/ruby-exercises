class Money
  attr_accessor :amount

  def initialize
    @amount = 0
  end

  def earn(this_much)
    @amount += this_much
  end

  def spend(this_much)
    @amount -= this_much
  end
end
