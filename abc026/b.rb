n = gets.to_i
rs = n.times.map{gets.to_i}.sort.reverse

sum = rs.inject(0){|sum,x| -sum + x**2}
puts sum.abs * Math::PI