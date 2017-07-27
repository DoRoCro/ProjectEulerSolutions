require('minitest/autorun')
require('minitest/rg')
require_relative('./P5.rb')

class P5Spec < Minitest::Test

  def setup
  end

  def test_initialize_integer10
    assert_equal(10, P5.new(10).number)
  end
  def test_initialize_integer20
    tester = P5.new(20)
    assert_equal(20, P5.new(20).number)
  end

  def test_2520_evenly_divisible_10
    tester10 = P5.new 10
    assert_equal(true, tester10.divisible?(2520) )
  end

end
