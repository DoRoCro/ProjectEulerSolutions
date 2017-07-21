require 'prime'
class MyPrime

  def self.largest_factor number
    # stop if prime (feels like cheating...)
    return number if Prime::prime? number

    # find all potential factors up to sqrt(number)
    primes = []
    Prime.each(Math::sqrt(number)) do |prime|
      primes.push(prime)
    end
    # filter out all non-factors
    primes.reject! {|prime| number % prime != 0}
    # return last item remaining in array
    return primes.last
  end
end

answer = MyPrime.largest_factor 600851475143
puts "The answer is: #{answer}"
