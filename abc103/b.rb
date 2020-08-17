s = gets.chomp
t = gets.chomp
flag = false
n = s.size
n.times do 
  s = s[-1] + s[0..-2]
  flag = true if s == t
end

puts flag ? "Yes" : "No"