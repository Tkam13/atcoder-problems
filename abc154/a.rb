s,t = gets.chomp.split.map(&:to_s)
a,b = gets.chomp.split.map(&:to_i)
u = gets.chomp
if u == s
  a -= 1
elsif u == t
  b -= 1
end
puts [a,b].join(" ")