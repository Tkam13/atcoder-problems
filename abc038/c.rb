n = gets.to_i
as = gets.chomp.split.map(&:to_i)
cnt = 0
ans = 0

n.times do |i|
	cnt += 1
	if i == n - 1 || as[i] >= as[i+1]
		ans += cnt * (cnt + 1) / 2
		cnt = 0
	end
end

puts ans