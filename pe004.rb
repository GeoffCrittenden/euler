max_pal = [0,0,0]
(100..999).to_a.reverse.each do |num1|
  (100..999).to_a.reverse.each do |num2|
    if num1 <= max_pal[1] && num1 <= max_pal[2] && num2 <= max_pal[1] && num2 <= max_pal[2]
      exit
    elsif (num1 * num2).to_s == (num1 * num2).to_s.reverse && num1 * num2 > max_pal[0]
      max_pal[0] = num1 * num2; max_pal[1] = num1; max_pal[2] = num2
      p max_pal
    end
  end
end
