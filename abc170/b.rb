x,y = gets.chomp.split.map(&:to_i)
ans = "No"
(0..x).each do |i|
	if 2 * i + 4 * (x - i) == y
		ans = "Yes"
		break
	end
end

puts ans