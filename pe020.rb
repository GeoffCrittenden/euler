def factorial(n)
  total = 1
  while n > 1
    total *= n; n -= 1
  end
  total
end

t = Time.now
p factorial(100).to_s.split('').map { |n| n.to_i }.reduce(:+)
p Time.now - t