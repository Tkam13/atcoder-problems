n,x = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
sum = Array.new(n-1,0)
ans = 0
(n-1).times do |i|
	sum[i] = as[i] + as[i+1]
end

(n-1).times do |i|
	next if sum[i] <= x
	diff = sum[i] - x
	ans += diff
	sum[i+1] -= [as[i+1], diff].min if i < n - 2
end

puts ans