require('minitest/autorun')
require('minitest/rg')
require_relative('./p1.rb')

class P1Spec < Minitest::Test

  def setup
  end
  def test_10_returns_23
    assert_equal(23, p1(10))    
  end
  def test_4_returns_3
    assert_equal(3, p1(4))
  end

  def test_1000
    puts p1(1000)
  end
end
