n = gets.to_i
s = gets.chomp
ans = 0
x = 0
n.times do |i|
	if s[i] == "I"
		x += 1
	else
		x -= 1
	end
	ans = x if ans < x
end

puts ans