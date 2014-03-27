(1..997).each { |a|
  (2..997).each { |b|
    (3..997).each { |c|
      next unless a < b && b < c
      if a**2 + b**2 == c**2 && a + b + c == 1000
        puts "#{[a,b,c]}, #{a * b * c}"
        exit
      end
    }
  }
}
