require_relative('./sieve.rb')
class Prime

  def self.nth(n)
    sieve_value = 1
    if n < sieve_value
      raise ArgumentError
    end
    begin
      sieve_value *= 2
      puts "sieving from #{sieve_value}"
      sieve = Sieve.new(sieve_value)
      list_of_primes = sieve.primes
    end until list_of_primes.length >= n
    return list_of_primes[n-1]
  end

end


module Bookkeeping
  VERSION = 1
end

puts "The answer is: #{Prime.nth(10001)}"