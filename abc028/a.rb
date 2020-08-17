n = gets.to_i
if n == 100
	ans = "Perfect"
elsif n >= 90
	ans = "Great"
elsif n >= 60
	ans = "Good"
else
	ans = "Bad"
end

puts ans