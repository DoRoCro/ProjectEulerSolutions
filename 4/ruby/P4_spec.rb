require 'minitest/autorun'
require 'minitest/rg'
require_relative './P4.rb'

class TestPalindrome < MiniTest::Test
  def test_91x99_is_palindrome
    assert_equal(true, Palindrome.yes?(91,99) )
  end
  def test_993x913_is_palindrome
    assert_equal(true, Palindrome.yes?(993,913) )
  end
  def test_3x3_is_palindrome
    assert_equal(true, Palindrome.yes?(3,3) )
  end

end