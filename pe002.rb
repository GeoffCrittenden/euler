fibonacci_numbers = [1,2]
while fibonacci_numbers.last < 4000000
  fibonacci_numbers << fibonacci_numbers[-1] + fibonacci_numbers[-2]
end
fibonacci_numbers.pop if fibonacci_numbers.last >= 4000000
puts sum = fibonacci_numbers.select { |x| x.even? }.reduce(:+)
