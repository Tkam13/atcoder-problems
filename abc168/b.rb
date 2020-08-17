k = gets.to_i
s = gets.chomp

if s.size <= k
	puts s
else
	puts s.slice(0,k) + "..."
end