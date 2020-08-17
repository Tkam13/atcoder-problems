n = gets.to_i
s = gets.chomp
ans = false
if n.odd?
	if n % 3 == 0
		ans = true if "abc" * (n/3) == s
	elsif n % 3 == 1
		ans = true if "bca" * (n/3) + "b" == s
	elsif n % 3 == 2
		ans = true if "cab" * (n/3) + "ca" == s
	end
end

puts ans ? (n-1)/2 : -1