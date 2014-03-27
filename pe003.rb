class MaxPrimeFactorFinder

  def initialize(number = 600851475143)
    @number = number
    @factors = find_factors
    p max_prime
  end

  def find_factors(factors = [@number], divisor = 2)
    number = @number
    while divisor <= number
      if number % divisor == 0
        factors << number / divisor
        number /= divisor
      else
        divisor += 1
      end
    end
    factors
  end

  def max_prime
    @factors.each { |factor| return factor if prime?(factor) }
  end

  def prime?(number)
    (2..number).each do |factor|
      return false if number != factor && number % factor == 0
    end
    true
  end

end

num = MaxPrimeFactorFinder.new
