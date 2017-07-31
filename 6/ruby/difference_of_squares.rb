class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum()
    sum = 0
    i = 0
    @number.times do
      i += 1
      sum += i
    end
    return sum*sum
  end

  def sum_of_squares()
    sum = 0
    for num in (1..@number)
      sum += num**2
    end
    return sum
  end

  def difference()
    self.square_of_sum - self.sum_of_squares
  end


end

module BookKeeping
  VERSION = 3
end

puts "The answer is: #{Squares.new(100).difference}"