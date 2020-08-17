ls = gets.chomp.split.map(&:to_i)
if ls[0] == ls[1]
	puts ls[-1]
elsif ls[0] == ls[-1]
	puts ls[1]
else
	puts ls[0]
end