n,t = gets.chomp.split.map(&:to_i)
ts = gets.chomp.split.map(&:to_i)
sum = t
ts.each_cons(2) do |a,b|
	sum += [b - a,t].min
end
puts sum