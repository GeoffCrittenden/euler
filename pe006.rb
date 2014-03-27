class DifferenceBetweenSummedSquaresAndSquaredSum
  attr_reader :answer

  def initialize(upper_number = 100)
    @upper_number = upper_number
    @answer = square_of_sum - sum_of_squares
  end

  private

  def sum_of_squares
    total = 0
    (1..@upper_number).to_a.each { |i| total += i**2 }
    total
  end

  def square_of_sum
    (1..@upper_number).to_a.reduce(:+)**2  
  end

end

puts DifferenceBetweenSummedSquaresAndSquaredSum.new.answer