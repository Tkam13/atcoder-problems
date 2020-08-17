n = gets.to_i
as = n.times.map{gets.to_i}
hash = Hash.new(0)
cnt = 0

as.uniq.sort.each do |a|
	hash[a] = cnt
	cnt += 1
end

as.each do |a|
	puts hash[a]
end