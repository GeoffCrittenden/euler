def collatz(n)
  length = 1
  until n == 1
    if n.odd?
      n = 3 * n + 1
    else
      n = n / 2
    end
    length += 1
  end
  length
end

t = Time.now
length = 0; number = 0
(1..999999).to_a.reverse.each do |n|
  next if n.even?
  l = collatz(n)
  if l > length
    number = n; length = l
    puts "#{n}: #{l}"
  end
end
p Time.now - t
