l,h = gets.chomp.split.map(&:to_i)
n = gets.to_i
as = n.times.map{gets.to_i}
as.each do |a|
	if h - a < 0
		puts -1
	else
		puts [l - a, 0].max
	end
end