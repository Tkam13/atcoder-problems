t = gets.chomp.chars

t.size.times do |i|
	if t[i] == "?"
		t[i] = "D"
	end
end

puts t.join