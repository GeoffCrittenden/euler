def generate_triangle_number(number)
  result = number * (number + 1) / 2
end

def find_triangle_divisors(number)
  n = number; divisors = 1
  while n > 1
    divisors += 1 if number % n == 0
    n -= 1
  end
  divisors
end

def find_start(power)
  n = 0
  while power >= 2
    power /= 2
    n += 1
  end
  n
end

def find_triangle_with_n_divisors(divisors)
  n = 1
  while true
    triangle = generate_triangle_number(n)
    count = find_triangle_divisors(triangle)
    break if count > divisors
    n += 1
  end
  triangle
end

t = Time.now
p find_triangle_with_n_divisors(500)
p Time.now - t
