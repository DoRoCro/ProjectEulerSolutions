class PyTrip
  def initialize(number)
    @target = number
    @a = 3
    @b = 4
    @c = @target - @a - @b
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

end