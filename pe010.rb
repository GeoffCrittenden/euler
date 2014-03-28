# num = 2
# divisor = 2
# primes = [0]
# count = primes.count
# while primes.last < 2_000_000
#   until divisor > num / 2
#     if num % divisor == 0
#       break     
#     else
#       divisor += 1
#     end
#   end
#   primes << num unless num > divisor && num % divisor == 0
#   p primes.last if count != primes.count
#   count = primes.count
#   if num.even?
#     num += 1
#   else
#     num += 2
#   end
#   divisor = 2
# end

# primes.pop if primes.last >= 2_000_000
# p primes.reduce(:+)

# require 'Prime'

# p Prime.each(2_000_000).map.reduce(:+)

t = Time.now
primes = []
for number in 2..2000000 do
  p number
  primes << number if primes.none? { |prime| number % prime == 0 }
  # p Time.now - t
end
p Time.now - t
p primes
p primes.reduce(:+)
