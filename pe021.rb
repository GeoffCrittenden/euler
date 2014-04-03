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
sums = []
(1..9999).each { |n| sums << [n,sum_proper_divisors(n)] }
sums.map! { |n| n.sort }.sort!
amicables = []
sums.each_with_index { |sum,i| amicables << sum if sum == sums[i + 1] }
p amicables.flatten.reduce(:+)
p Time.now - t
