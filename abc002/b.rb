w = gets.chomp
ans = []
array = ["a","i","u","e","o"]
w.size.times do |i|
	if !array.index(w[i])
		ans << w[i]
	end
end

puts ans.join