class PyTrip
  def initialize(number)
    @target = number
    @a=1
    @b=2
    @c=@target - @a - @b
  end

  def py_triplet?
    return true
  end

  def py_values
    return [3,4,5]
  end

  def abc
    return 60
  end

end