num = 2
divisor = 2
primes = []
while primes.count < 10001
  until divisor > num / 2
    if num % divisor == 0
      break     
    else
      divisor += 1
    end
  end
  primes << num unless num > divisor && num % divisor == 0
  num += 1
  divisor = 2
end

p primes.last
