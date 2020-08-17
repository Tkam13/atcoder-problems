s = gets.chomp
t = gets.chomp
ans = true
atcoder = ["a","t","c","o","d","e","r"]
s.size.times do |i|
	if s[i] != t[i]
		ans = false unless (s[i] == "@" && atcoder.index(t[i])) || (t[i] == "@" && atcoder.index(s[i]))
	end
end

puts ans ? "You can win" : "You will lose"