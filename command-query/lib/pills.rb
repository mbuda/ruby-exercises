class Pills
  attr_accessor :pills_num

  def initialize
    @pills_num = 60
  end

  def count
    @pills_num
  end

  def pop
    @pills_num -= 1
  end
end
