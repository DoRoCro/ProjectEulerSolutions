require 'minitest/autorun'
require 'minitest/rg'
require_relative './P4.rb'

class TestPalindrome < MiniTest::Test
  def test_91x99_is_palindrome
    assert_equal(true, Palindrome.yes?(91,99) )
  end
end