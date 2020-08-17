x = gets.chomp
ans = 0
x.size.times do |i|
	ans += x[i].to_i
end
puts ans