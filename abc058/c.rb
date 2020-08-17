n = gets.to_i
ss = n.times.map{gets.chomp}

hash = Hash.new(0)
ss.shift.chars.each do |c|
	hash[c] += 1
end

ss.each do |s|
	temp = Hash.new(0)
	s.chars.each do |c|
		temp[c] += 1
	end
	hash.keys.each do |k|
		hash[k] -= [hash[k] - temp[k] , 0].max
	end
end

ans = []
hash.keys.sort.each do |k|
	if hash[k] > 0
		ans << k * hash[k]
	end
end

puts ans.join