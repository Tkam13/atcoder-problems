n = gets.to_i
as = gets.chomp.split.map(&:to_i)
ave = as.inject(:+) / n
ans = 0
sum = 0
cnt = 0
n.times do |i|
	sum += as[i]
	cnt += 1
	if sum / cnt.to_f != ave
		if i == n - 1
			ans = -1
		else
			ans += 1
		end
	else
		sum = 0
		cnt = 0
	end
end

puts ans