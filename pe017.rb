@numbers =
  [[1000, "onethousand"],
   [900, "ninehundred", "and"],
   [800, "eighthundred", "and"],
   [700, "sevenhundred", "and"],
   [600, "sixhundred", "and"],
   [500, "fivehundred", "and"],
   [400, "fourhundred", "and"],
   [300, "threehundred", "and"],
   [200, "twohundred", "and"],
   [100, "onehundred", "and"],
   [90, "ninety"],
   [80, "eighty"],
   [70, "seventy"],
   [60, "sixty"],
   [50, "fifty"],
   [40, "forty"],
   [30, "thirty"],
   [20, "twenty"],
   [19, "nineteen"],
   [18, "eighteen"],
   [17, "seventeen"],
   [16, "sixteen"],
   [15, "fifteen"],
   [14, "fourteen"],
   [13, "thirteen"],
   [12, "twelve"],
   [11, "eleven"],
   [10, "ten"],
   [9, "nine"],
   [8, "eight"],
   [7, "seven"],
   [6, "six"],
   [5, "five"],
   [4, "four"],
   [3, "three"],
   [2, "two"],
   [1, "one"]] 

def convert(number)
  string = ""
  @numbers.each do |divisor|
    if number - divisor[0] >= 0
      string << divisor[1]
      number -= divisor[0]
      string << divisor[2] if divisor[2] && number > 0
    end
    break if number == 0
  end
  p string
  string.length
end

t = Time.now
total = 0
(1..1000).each do |number|
  total += convert(number)
end
p total
p Time.now - t
