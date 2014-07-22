class Light
  attr_accessor :power

  def initialize
    @power = false
  end

  def on?
    @power
  end

  def turn_on
    @power = true
  end
end
