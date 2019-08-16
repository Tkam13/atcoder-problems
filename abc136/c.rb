n = gets.to_i
hs = gets.chomp.split.map(&:to_i).reverse
ans = "Yes"
present = hs[0]
hs.each do |h|
  if h - present > 1
    ans = "No"
    break
  end
  if h - present == 1
    present = h-1
  else
    present = h
  end
end
puts ans