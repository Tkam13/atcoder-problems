n,k = gets.chomp.split.map(&:to_i)
hs = gets.chomp.split.map(&:to_i)
puts hs.count{|x| x >= k}
