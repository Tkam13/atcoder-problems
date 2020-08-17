n = gets.to_i
as = n.times.map{gets.to_i}
second,max = as.sort[-2..-1]
as.each do |a|
  if a == max
    puts second
  else
    puts max
  end
end