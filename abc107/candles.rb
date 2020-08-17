n,k = gets.chomp.split.map(&:to_i)
xs = gets.chomp.split.map(&:to_i)
ans = 10 ** 18

(n-k+1).times do |i|
	l = xs[i]
	r = xs[i+k-1]
	if l < 0 && r > 0
		dist = [l.abs * 2 + r, l.abs + r * 2].min
	else
		dist = [l.abs , r.abs].max
	end
	ans = dist if ans > dist
end

puts ans