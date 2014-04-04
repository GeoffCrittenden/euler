t = Time.now
total = 0
File.readlines('pe022.txt',',').map do |name|
  /\"(.*)\",*/.match(name)[1]
end.sort.each_with_index do |name,i|
  sum = 0
  name.split('').each do |l|
    sum += l.ord - 64
  end
  total += sum * (i + 1)
end
p total
p Time.now - t
