require 'prime'
class MyPrime
  def self.largest_factor number
    return Prime.prime_division(number).last[0]
  end
end
# answer = MyPrime.largest_factor 13195
answer = MyPrime.largest_factor 600851475143
puts "The answer is: #{answer}"
