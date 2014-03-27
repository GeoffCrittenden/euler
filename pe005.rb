number = 20
prime_factors = []
while number > 1
  p number
  divisor = 2
  temp_number = number
  while divisor <= temp_number
    if temp_number % divisor == 0
      prime_factors << divisor if !prime_factors.include?(divisor)
      temp_number /= divisor
    else
      divisor += 1
    end
  end
  number -= 1
end

p prime_factors; p base_num = prime_factors.reduce(:*)

num = base_num
divisor = 20
while divisor > 1
  divisor = 20
  while num % divisor == 0
    divisor -= 1
    break if divisor < 2
  end
  num += base_num if divisor > 1
end

p num