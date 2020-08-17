n,a,b = gets.chomp.split.map(&:to_i)
puts (n / (a + b)) * a + [n % (a + b), a].min