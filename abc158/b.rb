n,a,b = gets.chomp.split.map(&:to_i)
div = n / (a + b)
mod = [n % (a + b) , a].min
ans = div * a + mod
puts ans