as = 3.times.map{|i| [i,gets.to_i]}.sort_by(&:last).reverse
ans = Array.new(as.size)
as.each_with_index do |(a,_),i|
	ans[a] = i + 1
end
puts ans
