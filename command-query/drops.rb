class Drops
  attr_accessor :drops_num

  def initialize
    @drops_num = 0
  end

  def count
    @drops_num
  end

  def drip
    @drops_num += 1
  end
end
