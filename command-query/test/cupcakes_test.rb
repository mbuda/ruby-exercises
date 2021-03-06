gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/cupcake'
require_relative '../lib/cupcakes'

class CupcakesTest < Minitest::Test
  def test_sweetest_when_no_cupcakes
    cupcakes = Cupcakes.new
    assert_nil cupcakes.sweetest
  end

  def test_sweetest_with_only_one_left
    cupcakes = Cupcakes.new
    cupcakes << Cupcake.new("Carrot", 5) # 5 grams of sugar
    assert_equal "Carrot", cupcakes.sweetest.flavor
  end

  def test_sweetest_cupcake
    cupcakes = Cupcakes.new
    cupcakes << Cupcake.new("Carrot", 5)
    cupcakes << Cupcake.new("Caramel", 12)
    cupcakes << Cupcake.new("Chocolate", 8)
    assert_equal "Caramel", cupcakes.sweetest.flavor
  end
end
