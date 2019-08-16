n,c,k = gets.chomp.split.map(&:to_i)
ts = n.times.map{gets.to_i}.sort
i = 0
ans = 1
while ts[i]
  if ts[0] + k < ts[i]  || i >= c
    ans += 1
    ts.slice!(0,i)
    i = 0
  else
    i += 1
  end
end
puts ans
