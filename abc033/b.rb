n = gets.to_i
cs = n.times.map{gets.chomp.split}
sum = cs.inject(0){|sum,x| sum += x[1].to_i}
ans = "atcoder"

cs.each do |c,i|
	if i.to_i > sum / 2
		ans = c
	end
end

puts ans