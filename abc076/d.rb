s = gets.chomp
t = gets.chomp
ans = 'UNRESTORABLE'
array = []
(s.size - t.size + 1).times do |i|
	ss = s.slice(i,t.size)
	flag = true
	t.size.times do |j|
		flag = false if ss[j] != "?" && ss[j] != t[j]
	end
	array << i if flag
end

if !array.empty?
	if !array.any?{|a| s.slice(a,t.size) == t}
		s[array[-1],t.size] = t
	end
	s.size.times do |i|
		s[i] = "a" if s[i] == "?"
	end
	ans = s
end

puts ans
