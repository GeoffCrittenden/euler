class MaxPrimeFactorFinder
  attr_reader :max_prime_factor

  def initialize(number = 600851475143)
    @number = number
    @max_prime_factor = find_max_prime_factor
  end

  private

  def find_max_prime_factor(number = @number, divisor = 2)
    while divisor <= number / 2
      if number % divisor == 0
        number /= divisor
      else
        divisor += 1
      end
    end
    number
  end

end

num = MaxPrimeFactorFinder.new
p num.max_prime_factor
