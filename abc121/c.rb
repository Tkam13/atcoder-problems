n,m = gets.chomp.split.map(&:to_i)
ds = n.times.map{gets.chomp.split.map(&:to_i)}.sort_by(&:first)

sum = 0
ds.each do |a,b|
  break if m == 0
  sum += a * [b, m].min
  m = [m - b,0].max
end

puts sum