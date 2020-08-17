n,m,x = gets.chomp.split.map(&:to_i)
ps = n.times.map{gets.chomp.split.map(&:to_i)}
ans = 10**18
flag = false
(2**n).times do |i|
	array = Array.new(m,0)
	cnt = 0
	n.times do |j|
		if i[j] == 1
			ps[j].each_with_index do |t,k|
				if k == 0
					cnt += t
				else
					array[k-1] += t
				end
			end
		end
	end
	if array.all?{|a| a >= x}
		flag = true
		ans = cnt if ans > cnt
	end
end

puts flag ? ans : -1