n = gets.to_i
vs = gets.chomp.split.map(&:to_i)
vo = []
ve = []
ans = 0
(0..n-1).each do |i|
  if i.even?
    ve << vs[i]
  else
    vo << vs[i]
  end
end
count_ve = 0
ve.uniq.each do |v|
  count = ve.count{|_v| _v == v}
  count_ve = count if count > count_ve
end
ans += ve.size - count_ve
count_vo = 0
vo.uniq.each do |v|
  count = vo.count{|_v| _v == v}
  count_vo = count if count > count_vo
end
ans += vo.size - count_ve
puts ans
