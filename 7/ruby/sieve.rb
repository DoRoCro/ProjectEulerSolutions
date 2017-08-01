class Sieve

  def initialize(limit)
    @limit = limit
    @list = []
    counter = 1
    (@limit-1).times do
      counter +=1
      @list << counter
    end
  end

  def primes
    # sieve the list by deleting multiples
    
    @list.each do |num|       # potential problem if mutating the array as you go with enumerators, i.e. if each was evaluated at start rather than at each return...
      value = num
      (@limit / num).times do
        value += num
        @list.delete(value)
      end
    end
    # problem not apparent, array mutated on each pass so passes tests
    return @list
  end

end

module BookKeeping
  VERSION = 1
end