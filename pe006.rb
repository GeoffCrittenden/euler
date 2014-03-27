sum_squares = 0; sum_to_square = 0
for x in 1..100
  sum_squares += x**2
  sum_to_square += x
end

p sum_to_square**2 - sum_squares
