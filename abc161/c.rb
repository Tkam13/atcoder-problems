n,k = gets.chomp.split.map(&:to_i)
if n < k
	temp = n
else
	temp = n % k
end
puts [temp, (k-temp).abs].min