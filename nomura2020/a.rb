h1,m1,h2,m2,k = gets.chomp.split.map(&:to_i)
t1 = h1 * 60 + m1
t2 = h2 * 60 + m2
puts t2 - t1 - k