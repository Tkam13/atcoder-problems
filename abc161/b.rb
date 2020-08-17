n,m = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
cnt = 0
sum = as.inject(:+)
as.each do |a|
	if 4*m*a >= sum
		cnt += 1
	end
end

puts cnt >= m ? "Yes" : "No"