n,k = gets.chomp.split.map(&:to_i)
hs = n.times.map{gets.to_i}.sort
min = 1e9
(0..n-k).each do |i|
  ans = hs[i+k-1] - hs[i]
  min = ans if ans < min
end
puts min
