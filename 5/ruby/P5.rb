require 'prime'
class P5
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def divisible?(num)
    (1..@number).to_a.each do |divisor|
      return false if num % divisor != 0
    end
    return true
  end

  def find_min_multiple
    # try to assemble min multiple from prime factors
    found = false
    primes = {2 => 1}
    for i in 2..@number do
      factors = i.prime_division
      puts "primes = #{primes}"
      puts "i= #{i} factors= #{factors}"

      factors.each do |fac|
        puts "fac[0]= #{fac[0]}"
        primes[fac[0]] = primes[fac[0]] ? [primes[fac[0]], fac[1]].max : fac[1]
      end
    end
    multiple = 1
    puts primes
    primes.each { |p,e| multiple *= p ** e }
    return multiple
  end
end

for n in 10..20 do
  puts "The answer for #{n} is: #{P5.new(n).find_min_multiple}"
end
