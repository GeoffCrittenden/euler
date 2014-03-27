def find_max_prime_factor(number = 600851475143)
  while (divisor ||= 2) <= number / 2
    if number % divisor == 0
      number /= divisor
    else
      divisor += 1
    end
  end
  number
end

p find_max_prime_factor
