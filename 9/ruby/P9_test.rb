require 'minitest/autorun'
require 'minitest/rg'
require_relative './P9'

class PyTripTest < Minitest::Test

  def test_3_4_5_is_triplet_for_12
    p9 = PyTrip.new(12)
    assert_equal(true, p9.py_triplet?)
    assert_equal([3,4,5], p9.py_values)
  end

  def test_3_4_6_is_not_triplet_for_13
    p9 = PyTrip.new(13)
    assert_equal(false, p9.py_triplet?)
    assert_nil( p9.py_values)
  end

  def test_3_4_5_product_is_60
    p9 = PyTrip.new(12)
    assert_equal(60, p9.abc)
  end    

end