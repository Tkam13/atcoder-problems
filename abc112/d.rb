n,m = gets.chomp.split.map(&:to_i)
ans = 0
array = []
(1..Math.sqrt(m)).each do |i|
	if m % i == 0
		array << i
		array << m / i
	end
end

array.each do |d|
	ans = d if ans < d && n*d <= m
end

puts ans