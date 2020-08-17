d,g = gets.chomp.split.map(&:to_i)
ps = d.times.map{gets.chomp.split.map(&:to_i)}
ans = 10**18
(2**d).times do |i|
  cnt = 0
  sum = 0
  idx = 0
  d.times do |j|
    if i[j] == 1
      cnt += ps[j][0]
      sum += ps[j][0] * (j+1) * 100 + ps[j][1]
    else
      idx = j
    end
  end
  if sum >= g
    ans = cnt if ans > cnt
  else
    rem = (g - sum)/100
    if rem <= ps[idx][0] * (idx+1)
      cnt += (rem / (idx+1).to_f).ceil
      ans = cnt if ans > cnt
    end
  end
end

puts ans