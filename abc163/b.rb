n,m = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
puts [n - as.inject(:+),-1].max