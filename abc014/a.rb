a,b = 2.times.map{gets.to_i}
puts a%b == 0 ? 0 : b - a%b