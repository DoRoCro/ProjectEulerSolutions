class PyTrip
  def initialize(number)
    @target = number
    @a = 1
    @b = 2
    @c = get_c(@target, @a, @b)
    py_search if !py_triplet?
  end

  def get_c(total, a, b)
    c = total - (a + b)
    return c
  end

  def py_triplet?
    @a**2 + @b**2 == @c**2
  end

  def py_values
    py_triplet? ? [@a, @b, @c] : nil
  end

  def abc
    return @a * @b * @c
  end

  def py_search
    while !py_values do
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
puts "Pythagorean triplet [a, b, c] is #{p9.py_values.to_s}"
puts "The answer (a*b*c) is #{p9.abc}"
