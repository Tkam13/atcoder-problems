n,m = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map.with_index{|a,i| [a.to_i,i]}

ans = Array.new(m,-1)
cur = 10**18
child = Array.new(n,0)
as.each do |a,i|
	idx = child.bsearch_index{|x| x < a}
	if idx != nil
		ans[i] = idx + 1 
		child[idx] = a
	end
end
puts ans