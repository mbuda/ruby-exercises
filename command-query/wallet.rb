class Wallet
  attr_accessor :cents
  attr_reader :penny, :nickel, :dime

  def initialize
    @cents = 0
  end

  def coin_value(money)
    case money
    when :penny
      1
    when :nickel
      5
    when :dime
      10
    when :quarter
      25
    when :dollar
      100
    end
  end

  def <<(money)
    @cents += coin_value(money)
  end

  def take(*args)
    args.each { |a|
    if coin_value(a) <= @cents
      @cents -= coin_value(a)
    end
    }
  end
end

