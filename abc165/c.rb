n,m,q = gets.chomp.split.map(&:to_i)
qs = q.times.map{gets.chomp.split.map(&:to_i)}
ans = 0
stack = [[1]]
while !stack.empty?
	s = stack.pop
	sum = 0
	if s.size < n
		r = s[-1]
		(r..m).each do |i|
			stack << (s.dup << i)
		end
	else
		qs.each do |a,b,c,d|
			if s[b-1] - s[a-1] == c
				sum += d
			end
		end
	end
	ans = sum if ans < sum
end

puts ans