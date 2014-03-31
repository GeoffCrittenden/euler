t = Time.now
pyramid = []
File.readlines("pe067.txt").each do |line|
  line = line.chop!.split(' ')
  line.each_with_index do |n,i|
    if n[0] == "0"
      line[i] = n[-1].to_i
    else
      line[i] = n.to_i
    end
  end
  pyramid << line
end

while pyramid.length > 1
  pyramid[-2].each_with_index do |n,i|
    pyramid[-2][i] = [n + pyramid[-1][i],n + pyramid[-1][i + 1]].max
  end
  pyramid.pop
end

p pyramid.flatten[0]
p Time.now - t