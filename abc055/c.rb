n,m = gets.chomp.split.map(&:to_i)
if 2*n >= m
	puts m/2
else
	puts n + ((m - 2*n)/4)
end