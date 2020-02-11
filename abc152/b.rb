a,b = gets.chomp.split.map(&:to_i)
ary = ["#{a}" * b , "#{b}" * a].sort
puts ary[0]