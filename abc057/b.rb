n,m = gets.chomp.split.map(&:to_i)
ss = n.times.map{gets.chomp.split.map(&:to_i)}
cs = m.times.map{gets.chomp.split.map(&:to_i)}

ss.each do |a,b|
	min_dist = 10**18
	ans = -1
	cs.each_with_index do |(c,d), i|
		dist = (a-c).abs + (b-d).abs
		if dist < min_dist
			ans = i + 1 
			min_dist = dist
		end
	end
	puts ans
end