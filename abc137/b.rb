k,x = gets.chomp.split.map(&:to_i)
min_num = -1000000
max_num = 1000000
a = [x-k+1,min_num].max
b = [x+k-1,max_num].min
puts (a..b).to_a.join(" ")