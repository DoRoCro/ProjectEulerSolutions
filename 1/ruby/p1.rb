def p1(number)
  sum = 0
  for i in 1..number-1
    if i % 3 == 0 || i % 5 == 0 then
      sum = sum + i
    end
  end
  return sum
end
