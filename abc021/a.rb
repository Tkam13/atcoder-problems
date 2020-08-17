n = gets.chomp.to_i
ans = []
cnt = 0
n.times do |i|
	if n[i] == 1
		cnt += 1
		ans << 2 ** i
	end
end
puts cnt
puts ans