t = Time.now
total = 0
(2**1000).to_s.split('').each { |n| total += n.to_i }
p total
p Time.now - t
