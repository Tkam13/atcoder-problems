n = gets.to_i
hs = gets.chomp.split.map(&:to_i)
ans = 0

n.times do |i|
	if i == n - 1
		ans += hs[i]
		break
	end
	if hs[i] > hs[i+1]
		ans += hs[i] - hs[i+1]
	end
end

puts ans