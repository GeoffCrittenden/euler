def sum_proper_divisors(n)
  return 0 if n == 1
  sum = 0; d = n / 2
  while d >= 1
    sum += d if n % d == 0
    d -= 1
  end
  sum
end

t = Time.now
p (1..9999).select { |n| n != sum_proper_divisors(n) && n == sum_proper_divisors(sum_proper_divisors(n)) }.reduce(:+)
p Time.now - t
