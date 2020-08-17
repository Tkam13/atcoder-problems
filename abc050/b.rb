n = gets.to_i
ts = gets.chomp.split.map(&:to_i)
m = gets.to_i
ps = m.times.map{gets.chomp.split.map(&:to_i)}

sum = ts.inject(:+)
ps.each do |idx,x|
	puts sum - ts[idx-1] + x
end