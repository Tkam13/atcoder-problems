n = gets.to_i
as = n.times.map{gets.chomp.chars.uniq}
ans = Array.new(n)

(n/2 + n%2).times do |i|
	flag = false
	s1 = as[i]
	s2 = as[-i-1]
	s1.each do |c|
		if s2.include?(c)
			flag = c
		end
	end
	if flag
		ans[i] = flag
		ans[-1-i] = flag
	else
		ans = [-1]
		break
	end
end

puts ans.join