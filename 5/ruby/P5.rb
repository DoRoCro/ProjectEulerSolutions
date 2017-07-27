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
    multiple = @number * 2
    found = false
    until found do 
      multiple += 2
      found = true if self.divisible?(multiple) 
    end
    return multiple
  end
end

for n in 10..20 do
  puts "The answer for #{n} is: #{P5.new(n).find_min_multiple}"
end
