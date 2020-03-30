d,g = gets.chomp.split.map(&:to_i)
ps,cs = d.times.map{gets.chomp.split.map(&:to_i)}.transpose
ans = 10**5
(2 ** d).times do |i|
  sum = 0
  cnt = 0
  num = 0
  d.times do |j|
    if i[j] == 1
      cnt += ps[j]
      sum += (ps[j] * 100 * (j+1) + cs[j])
    else
      num = j
    end
  end

  if sum < g
    temp = ((g - sum).to_f / (100 * (num+1)) ).ceil
    if temp < ps[num]
      cnt += temp
      ans = cnt if ans > cnt
    end
  else
    ans = cnt if ans > cnt
  end
end

puts ans
