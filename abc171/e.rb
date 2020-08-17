n = gets.to_i
as = gets.chomp.split.map(&:to_i)
xor = as.inject{|res,x| res ^ x}
as.map!{|a| xor ^ a}
puts as.join(" ")
