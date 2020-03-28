a,b,m = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
bs = gets.chomp.split.map(&:to_i)
ts = m.times.map{gets.chomp.split.map(&:to_i)}
min = as.min + bs.min
ts.each do |x,y,c|
  sum = as[x-1] + bs[y-1] - c
  min = sum if min > sum
end
puts min
