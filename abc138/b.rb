n = gets.to_i
as = gets.chomp.split.map(&:to_i)
a0 = as[0]
sum = 0
seki = as.shift
as.each do|a|
   seki *= a
end
as.unshift(a0)
as.each do|a|
  sum += seki/a
end

ans = seki / sum.to_f
puts ans