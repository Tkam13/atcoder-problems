n = gets.to_i
as = gets.chomp.split.map(&:to_i)
ans = Array.new(n,0)
as.each_with_index do |a,i|
	if i % 2 == 0
		ans[0] += a
	else
		ans[0] -= a
	end
end

(1..n-1).each do |i|
	ans[i] = 2 * as[i-1] - ans[i-1]
end

puts ans.join(" ")