n,m = gets.chomp.split.map(&:to_i)
t = 1900*m + (n-m) * 100
p_inv = 2**m
puts t * p_inv