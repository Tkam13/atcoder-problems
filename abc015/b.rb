n = gets.to_i
as = gets.chomp.split.map(&:to_i)
sum = as.inject(:+).to_f / as.count{|x| x != 0}
puts sum.ceil