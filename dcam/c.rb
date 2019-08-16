n = gets.to_i
ss = n.times.map{gets.chomp}
ans = 0
b = 0 
a = 0
ba = 0
ss.each do |s|
  (0..s.size-2).each do|i|
    if s.slice(i,2) == "AB"
      ans += 1
    end
  end
  if s[0] == "B" && s[-1] == "A"
    ba += 1
  elsif s[0] == "B"
    b += 1
  elsif s[-1] == "A"
    a += 1
  end
end
ans += [ba-1,0].max
if ba > 0
  if a > 0 || b > 0
    ans += 2 + [a-1,b-1].min
  end
else
  ans += [a,b].min
end
puts ans