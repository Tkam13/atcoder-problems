s = gets.chomp
ans = 0
if s == "SUN"
  ans = 7
elsif s == "MON"
  ans = 6
elsif s == "TUE"
  ans = 5
elsif s == "WED"
  ans = 4
elsif s == "THU"
  ans = 3
elsif s == "FRI"
  ans = 2
elsif s == "SAT"
  ans = 1
end
puts ans 