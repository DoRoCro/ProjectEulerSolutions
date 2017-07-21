require 'prime'
class MyPrime

  def self.largest_factor number
    # stop if prime (feels like cheating...)
    return number if Prime::prime? number

    # find all potential factors up to number/2
    primes = []
    Prime.each(number/2) do |prime|
      primes.push(prime)
    end
    # filter out all non-factors
    primes.reject! {|prime| number % prime != 0}
    # return last item remaining in array
    return primes.last
  end
end
answer = MyPrime.largest_factor 600851475143
# answer = MyPrime.largest_factor 13195
puts "The answer is: #{answer}"
