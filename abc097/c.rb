s = gets.chomp.chars
k = gets.to_i
array = []

(1..k).each do |i|
	s.each_cons(i) do |v|
		array << v.join
	end
end

puts array.uniq.sort[k-1]
