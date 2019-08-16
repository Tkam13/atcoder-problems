n = gets.to_i
as = n.times.map{gets.to_i}
copy = as.sort.reverse
max1 = copy[0]
max2 = copy[1]
as.each do |a|
  if a == max1
    puts max2
  else
    puts max1
  end
end
