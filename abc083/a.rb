n,a,b = gets.chomp.split.map(&:to_i)
ans = 0
(1..n).each do |i|
	temp = i
	sum = 0
	while temp > 0
		sum += temp % 10
		temp /= 10
	end
	if sum >= a && sum <= b
		ans += i
	end
end

puts ans