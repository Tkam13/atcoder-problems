o = gets.chomp
e = gets.chomp
s = o.size + e.size
ans = ""

s.times do |i|
	if i.even?
		ans += o.slice!(0,1)
	else
		ans += e.slice!(0,1)
	end
end

puts ans