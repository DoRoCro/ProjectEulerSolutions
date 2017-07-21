require 'minitest/autorun'
require 'minitest/rg'
require_relative './P3'

class TestMyPrime < Minitest::Test
  def setup
  end

  def test_15_returns_5
    assert_equal( 5, MyPrime.largest_factor(15) )
  end

  def test_47_returns_47_as_prime
    assert_equal( 47, MyPrime.largest_factor(47) )
  end

  def test_13195_returns_29
    assert_equal( 29, MyPrime.largest_factor(13195) )
  end


end
