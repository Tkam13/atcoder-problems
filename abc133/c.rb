l,r = gets.chomp.split.map(&:to_i)
ans = 10**18
if r - l > 2019
	ans = 0
else
	(l..r).each do |i|
		(l..r).each do |j|
			next if i == j
			t = i*j % 2019
			ans = t if ans > t
		end
	end
end

puts ans