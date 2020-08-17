n = gets.to_i
as = gets.chomp.split.map.with_index{|c,i| [c.to_i,i]}.sort_by(&:first).reverse
n.times do |i|
	puts as[i][1] + 1
end