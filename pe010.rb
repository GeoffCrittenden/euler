t = Time.now
upper_bound = ARGV[0].to_i
prime_numbers = (2..upper_bound).to_a
multiples = []
for n in 2..Math.sqrt(upper_bound)
  for i in 0..prime_numbers.count
    break if (n**2 + i*n) > prime_numbers.last
    multiples << n**2 + i*n
  end
end
p (prime_numbers - multiples).reduce(:+)
p Time.now - t
