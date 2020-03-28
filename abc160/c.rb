k,n = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i).sort
max_dist = k - as[-1] + as[0]
(0..n-2).each do |i|
  dist = as[i+1] - as[i]
  max_dist = [max_dist, dist].max
end
puts k - max_dist