n,m = gets.chomp.split.map(&:to_i)
as = n.times.map{gets.chomp.split.map(&:to_i)}
ans = (1..m).to_a
as.each do |a|
  ans = ans & a[1..-1]
end
p ans.size
