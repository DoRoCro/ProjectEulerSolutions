require 'pry'

class Palindrome
  def self.yes?(number1 , number2)
    product = number1 * number2
    number_as_string = product.to_s
    number_length = number_as_string.length
    checks = (number_length / 2).to_i
    i = 0
    checks.times do
      if number_as_string[i] != number_as_string[number_length - 1 - i]
        return false
      end
      # binding.pry
      i += 1
    end
    return true
  end
end

# start from largest product, work down, find all, find max
palindromes = Hash.new
(900..999).to_a.each do |i|
  (900..999).to_a.each do |j|
    if Palindrome.yes?(i,j)
      palindromes["#{i} * #{j} = #{i*j}"]= i*j 
    end
  end
end
puts "The answer is: #{palindromes.max}"
