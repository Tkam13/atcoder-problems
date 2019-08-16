n = gets.to_i
as = gets.chomp.split.map(&:to_i)
ave = (as.inject(:+)/n.to_f).round
sum = 0
as.each do |a|
  sum += (ave - a)**2
end
p sum
