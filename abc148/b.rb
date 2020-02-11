n = gets.to_i
s,t = gets.chomp.split
ans = ""
(0..n-1).each do |i|
  ans += s[i]
  ans += t[i]
end
puts ans