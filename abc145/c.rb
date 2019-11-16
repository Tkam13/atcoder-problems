n = gets.to_i
ps = n.times.map{gets.chomp.split.map(&:to_f)}
sum = 0
(0..n-1).to_a.permutation.each do |a|
  dist = 0
  (1..a.size-1).each do|i|
    dist += Math.sqrt((ps[a[i-1]][0] - ps[a[i]][0]) ** 2 + (ps[a[i-1]][1] - ps[a[i]][1]) ** 2)
  end
  sum += dist
end

puts sum / (1..n).inject(:*)