x = gets.chomp
flag = true
while flag && x != ""
	if x[0..1] == "ch"
		x.slice!(0,2)
	elsif x[0] == "o" || x[0] == "k" || x[0] == "u"
		x.slice!(0,1)
	else
		flag = false
	end
end

puts x == "" ? "YES" : "NO"