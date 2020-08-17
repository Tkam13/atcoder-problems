a,d = gets.chomp.split.map(&:to_i)
puts [a*(d+1), (a+1)*d].max