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
  
end
