t = Time.now
# (1..997).each { |a|
#   (2..997).each { |b|
#     (3..997).each { |c|
#       next unless a < b && b < c
#       if a + b + c == 1000 && a**2 + b**2 == c**2
#         puts "#{[a,b,c]}, #{a * b * c}"
#         puts "#{Time.now - t} seconds"
#         exit
#       end
#     }
#   }
# }

n = 1000
for a in 1..997
  b = (n * (n - (2 * a))) / (2 * (n - a))
  c = n - a - b
  if a**2 + b**2 == c**2
    puts "#{[a,b,c]}, #{a * b * c}"
    puts "#{Time.now - t} seconds"
    exit
  end
end