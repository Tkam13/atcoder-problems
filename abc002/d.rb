n,m = gets.chomp.split.map(&:to_i)
hs = m.times.map{gets.chomp.split.map(&:to_i)}
array = Array.new(12){Array.new(12,0)}
hs.each do |x,y|
  array[x-1][y-1] = array[y-1][x-1] = 1
end
p array

