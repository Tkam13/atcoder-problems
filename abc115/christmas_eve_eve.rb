n = gets.to_i
ps = n.times.map{gets.to_i}.sort
p_max = ps.pop
puts p_max/2 + ps.inject(:+)
