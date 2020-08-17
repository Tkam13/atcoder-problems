n = gets.to_i
s = n.times.map{gets.chomp.chars}
ans = Array.new(n){Array.new(n)}

n.times do |i|
	n.times do |j|
		ans[i][j] = s[n-j-1][i]
	end
end

n.times do |i|
	puts ans[i].join
end