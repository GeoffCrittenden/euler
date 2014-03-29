t = Time.now
upper_bound = 2000000
multiples = []
sqrt = (upper_bound**0.5).to_i
n = 3
while n <= sqrt
  for i in 0..upper_bound
    multiple = n**2 + i*n
    break if multiple > upper_bound
    multiples << multiple
  end
  n += 2
end
prime_numbers = (3..upper_bound).map { |n| n if n.odd? }.compact
prime_numbers.unshift(2)
p (prime_numbers - multiples).reduce(:+)

p Time.now - t
