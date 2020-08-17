n,q = gets.chomp.split.map(&:to_i)
l_array = Array.new(n,0)
r_array = Array.new(n,0)
ans = []
cnt = 0

q.times do
	l,r = gets.chomp.split.map(&:to_i)
	l_array[l-1] += 1
	r_array[r-1] += 1
end

n.times do |i|
	cnt += l_array[i]
	if cnt.odd?
		ans << 1
	else
		ans << 0
	end
	cnt -= r_array[i]
end

puts ans.join
