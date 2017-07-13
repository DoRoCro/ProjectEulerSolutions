require('minitest/autorun')
require('minitest/rg')
require_relative('./p1.rb')

class P1Spec < Minitest::Test

  def setup
  end
  def test_10_returns_23
    assert_equal(23, p1(10))    
  end

end
