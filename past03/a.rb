s = gets.chomp
t = gets.chomp
ans = "different"
if s == t
	ans = "same"
elsif s.upcase == t.upcase
	ans = "case-insensitive"
end

puts ans