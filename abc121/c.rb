n,m = gets.chomp.split.map(&:to_i)
ds = n.times.map{gets.chomp.split.map(&:to_i)}.sort_by(&:first)
sum = 0
ds.each do |a,b|
  if m - b > 0
    sum += a*b
    m = m - b
  else
    sum += a*(m)
    break
  end
end
puts sum
