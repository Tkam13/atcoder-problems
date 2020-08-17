n,k = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
sum = Array.new(n,0)
ans = 0

n.times do |i|
	sum[i] += as[i]
	sum[i] += sum[i-1] if i != 0
end

n.times do |i|
	break if k+i > n 
	if i == 0
		ans += sum[k-1]
	else
		ans += sum[k+i-1] - sum[i-1]
	end
end

puts ans