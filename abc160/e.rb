x,y,a,b,c = gets.chomp.split.map(&:to_i)
ps = gets.chomp.split.map(&:to_i).sort
qs = gets.chomp.split.map(&:to_i).sort
rs = gets.chomp.split.map(&:to_i).sort
array = (ps.slice(a-x..-1) + qs.slice(b-y..-1) + rs).sort

puts array.slice(array.size-x-y..-1).inject(:+)
