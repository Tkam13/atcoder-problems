n,t = gets.chomp.split.map(&:to_i)
as = n.times.map{gets.to_i}
ans = t * n
as.each_cons(2) do |x,y|
	if y - x < t
		ans -= t - (y - x)
	end
end

puts ans