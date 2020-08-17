n,m = gets.chomp.split.map(&:to_i)
ans = [n, m/2].min + [m - 2*n , 0].max / 4
puts ans