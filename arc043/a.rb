n,a,b = gets.chomp.split.map(&:to_i)
s = n.times.map{gets.to_f}
ans = []
ave = s.inject(:+) / n
if s.max - s.min == 0
  puts -1
else
  ans << b / (s.max - s.min)
  ans << a - ans[0] * ave
  puts ans.join(" ")
end