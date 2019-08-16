n,m = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i).sort
ops = m.times.map{gets.chomp.split.map(&:to_i)}.sort_by(&:last).reverse
flag = false
current = 0
ops.each do |b,c|
  (current..current+b-1).each do |i|
    if i < n && as[i] < c
      as[i] = c
    else
      flag = true
      break
    end
  end
  if flag
    break
  else
    current += b
  end
end
puts as.inject(:+)
