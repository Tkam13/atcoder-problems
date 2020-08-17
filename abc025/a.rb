s = gets.chomp.chars
n = gets.to_i

ans = s.repeated_permutation(2).map{|x| x.join}.sort[n-1]
puts ans