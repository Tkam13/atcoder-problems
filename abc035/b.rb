s = gets.chomp
t = gets.to_i
pos = [0,0]
cnt = 0

s.size.times do |i|
	if s[i] == "L"
		pos[0] -= 1
	elsif s[i] == "R"
		pos[0] += 1
	elsif s[i] == "U"
		pos[1] += 1
	elsif s[i] == "D"
		pos[1] -= 1
	else
		cnt += 1
	end
end

if t == 1
	puts pos[0].abs + pos[1].abs + cnt
else
	cnt -= pos[0].abs + pos[1].abs
	puts cnt < 0 ? cnt.abs : cnt % 2
end