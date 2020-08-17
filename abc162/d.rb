n = gets.to_i
s = gets.chomp
r_cnt = 0
g_cnt = 0
b_cnt = 0

n.times do |i|
	if s[i] == "R"
		r_cnt += 1
	elsif	s[i] == "G"
		g_cnt += 1
	else
		b_cnt += 1
	end
end

ans = r_cnt * g_cnt * b_cnt

(n-1).times do |i|
	(i+1).upto(n-1) do |j|
		k = 2*j - i
		break if k >= n
		if s[i] != s[j] && s[j] != s[k] && s[k] != s[i]
			ans -= 1
		end
	end
end

puts ans