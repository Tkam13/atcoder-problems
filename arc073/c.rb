n,t = gets.chomp.split.map(&:to_i)
ts = gets.chomp.split.map(&:to_i)

sum = n*t

ts.each_cons(2) do |a,b|
	sum -= [t - (b - a),0].max
end

puts sum