k = gets.to_i
a,b = gets.chomp.split.map(&:to_i)
flag = false
(a..b).each do |i|
	if i % k == 0
		flag = true
		break
	end
end

puts flag ? "OK" : "NG"