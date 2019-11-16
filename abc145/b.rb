n = gets.to_i
s = gets.chomp
if n%2 == 0 && s.slice(0..n/2 -1) == s.slice(n/2..-1)
  ans = "Yes"
else
  ans = "No"
end

puts ans