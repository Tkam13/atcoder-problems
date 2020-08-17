n = gets.to_i
as = gets.chomp.split.map(&:to_i)
sum = 0
as.each do |a|
	while a % 2 == 0 || a % 3 == 2
		a -= 1
		sum += 1
	end
end

puts sum