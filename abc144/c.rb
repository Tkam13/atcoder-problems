n = gets.to_i
array = []
ans = 10**18
(1..Math.sqrt(n)).each do |i|
	if n % i == 0
		array << [i, n/i]
	end
end

array.each do |x,y|
	dist = x + y - 2
	ans = dist if ans > dist
end

puts ans