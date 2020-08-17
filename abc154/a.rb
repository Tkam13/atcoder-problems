s,t = gets.chomp.split
a,b = gets.chomp.split.map(&:to_i)
u = gets.chomp

hash = Hash.new(0)
hash[s] = a; hash[t] = b;
hash[u] -= 1
puts "#{hash[s]} #{hash[t]}"