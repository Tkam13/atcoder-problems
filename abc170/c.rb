x,n = gets.chomp.split.map(&:to_i)
ps = gets.chomp.split.map(&:to_i)

hash = Hash.new(0)
ps.each do |i|
	hash[i] += 1
end
dist = 10 ** 18
ans = -1
(0..101).each do |i|
	if (x - i).abs < dist && hash[i] == 0
		ans = i
		dist = (x - i).abs
	end
end

puts ans
