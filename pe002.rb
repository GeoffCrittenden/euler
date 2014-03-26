def fibonacci(sequence_number)
  if sequence_number == 1
    0
  elsif sequence_number == 2
    1
  else
    fibonacci(sequence_number - 1) + fibonacci(sequence_number - 2)
  end
end

fib_nums = []; x = 1
while fib_nums.last == nil || fib_nums.last < 4000000
  fib_nums << fibonacci(x)
  x += 1
end
fib_nums.pop if fib_nums.last >= 4000000

puts sum = fib_nums.select { |x| x.even? }.inject(:+)
