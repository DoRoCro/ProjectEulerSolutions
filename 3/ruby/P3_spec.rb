require 'minitest/autorun'
require 'minitest/rg'
require_relative './P3'

class TestPrime < Minitest::Test
  def setup
  end

  def test_13195_returns_29
    skip
    assert_equal( 29, Prime.largest_factor(13195) )
  end

  def test_15_returns_5
    assert_equal( 5, Prime.largest_factor(15) )
  end
end
