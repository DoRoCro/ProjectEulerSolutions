#
# Project Euler Problem 9 solution
#
class PyTrip
  def initialize(number)
    @target = number
    @a = 1
    @b = 2
    @c = get_c(@target, @a, @b)
    py_search unless py_triplet?
  end

  def get_c(total, a, b)
    total - (a + b)
  end

  def py_triplet?
    @a**2 + @b**2 == @c**2
  end

  def py_values
    py_triplet? ? [@a, @b, @c] : nil
  end

  def abc
    @a * @b * @c
  end

  def py_search
    until py_values
      py_triplet? ? return : py_try_next
      return if @c <= 0
    end
  end

  def py_try_next
    if @b >= @c - 1
      @a += 1
      @b = @a + 1
    else
      @b += 1
    end
    @c = get_c(@target, @a, @b)
  end
end

p9 = PyTrip.new(1000)
puts "Pythagorean triplet [a, b, c] is #{p9.py_values}"
puts "The answer (a*b*c) is #{p9.abc}"
