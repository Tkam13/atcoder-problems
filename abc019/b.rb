s = gets.chomp
n = s.size
ans = []
pre = ""
cnt = 0
n.times do |i|
	if i == 0
		pre = s[i]
		cnt = 1
	else
		if pre != s[i]
			ans << pre + cnt.to_s
			pre = s[i]
			cnt = 1
		else
			cnt += 1
		end
	end
	if i == n-1
		ans << pre + cnt.to_s
	end
end

puts ans.join