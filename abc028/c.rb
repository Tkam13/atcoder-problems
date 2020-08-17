ns = gets.chomp.split.map(&:to_i)
puts ns.combination(3).map{|a| a.inject(:+)}.sort[-3]