t = Time.now
upper_bound = 2000000
prime_numbers = (3..upper_bound).map { |n| n if n.odd? }.compact
prime_numbers.unshift(2)
multiples = []
for n in 3..Math.sqrt(upper_bound)
  next if n.even?
  for i in 0..prime_numbers.count
    break if (n**2 + i*n) > prime_numbers.last
    multiples << n**2 + i*n
  end
end
p (prime_numbers - multiples).reduce(:+)
p Time.now - t
