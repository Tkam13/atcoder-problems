n = gets.to_i
ans = 10**18
(1..Math.sqrt(n)).each do |i|
	suf = 1
	j = 1
	while suf <= n
		diff = (i - j).abs + n - suf
		ans = diff if ans > diff
		j += 1
		suf = i * j
	end
end

puts ans