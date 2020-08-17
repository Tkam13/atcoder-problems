d1 = gets.chomp.split.map(&:to_i)
d2 = gets.chomp.split.map(&:to_i)
flag = false

2.times do |i|
	2.times do |j|
		if d1[i] == d2[j]
			flag = true
			break
		end
	end
	break if flag
end

puts flag ? "YES" : "NO" 