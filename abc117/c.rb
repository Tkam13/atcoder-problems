n,m = gets.chomp.split.map(&:to_i)
xs = gets.chomp.split.map(&:to_i).sort
dist = xs.each_cons(2).map{|a,b| (a-b).abs}.sort
ans = 0
[0,m - n].max.times do
	ans += dist.shift
end

puts ans