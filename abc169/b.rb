n = gets.to_i
as = gets.chomp.split.map(&:to_i)
ans = 1
as.each do |a|
	ans *= a
	if ans > 10 ** 18
		ans = -1
		break
	end
end

if as.include?(0)
	ans = 0
end

puts ans