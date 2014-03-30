def factorial(n)
  return 1 if n == 0
  total = 1
  until n == 1; total *= n; n -= 1
  end; total
end

def grid_paths(side_size)
  factorial(2 * side_size) / (factorial(side_size) * factorial(side_size))
end

t = Time.now
p grid_paths(20)
p Time.now - t
