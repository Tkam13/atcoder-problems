s = gets.chomp
flag = true
ans = [-1,-1]
n = s.size
n.times do |i|
	ans = [i+1,i+2] if i < n - 1 && s[i] == s[i+1]
	ans = [i+1,i+3] if i < n - 2 && s[i] == s[i+2]
end

puts ans.join(" ")