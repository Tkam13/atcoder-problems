a,b,k = gets.chomp.split.map(&:to_i)
if a > k
  a -= k
  puts [a,b].join(" ")
else
  k -= a
  a = 0
  b = [b - k,0].max
  puts [a,b].join(" ")
end