n,d = gets.chomp.split.map(&:to_i)
ans = n/(1+d*2).to_f
puts ans.ceil