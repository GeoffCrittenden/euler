sum_squares = 0; square_sum = 0
for x in 1..100
  sum_squares += x**2
  square_sum += x
end

p (square_sum)**2 - sum_squares
