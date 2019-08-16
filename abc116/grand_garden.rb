n = gets.to_i
hs = gets.chomp.split.map(&:to_i)
sum = hs[0]
(0..n-2).each do |i|
  if hs[i] < hs[i+1]
    sum += hs[i+1] - hs[i]
  end
end
puts sum
