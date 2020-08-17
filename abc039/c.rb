s = gets.chomp.chars
index = []
s.each_cons(2).with_index do |(x,y) , i|
	if x == y
		index << i
	end
end

if (index[0] - index[1]).abs == 7
	case index[0]
	when 4 then puts "Do"
	when 2 then puts "Re"
	when 0 then puts "Mi"
	end
else
	case index[0]
	when 6 then puts "Fa"
	when 4 then puts "So"
	when 2 then puts "La"
	when 0 then puts "Si"
	end
end