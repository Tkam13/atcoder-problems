n,s,t = gets.chomp.split.map(&:to_i)
w = 0
ans = 0
n.times do
	w += gets.to_i
	ans += 1 if w >= s && w <= t
end

puts ans