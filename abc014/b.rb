n,x = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
sum = 0
n.times do |i|
	sum += as[i] if x[i] == 1
end

puts sum