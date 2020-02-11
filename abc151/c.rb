n,m = gets.chomp.split.map(&:to_i)
ps = m.times.map{gets.chomp.split}
p_array = Array.new(n+1,0)
ac_array = Array.new(n+1,false)
ps.each do |p,s|
  p = p.to_i
  if s == "AC"
    ac_array[p] = true
  elsif s == "WA" && ac_array[p] == false
    p_array[p] += 1
  end
end
ac_cnt = 0
p_cnt = 0
ac_array.each_with_index do |f,i|
  if f == true
    ac_cnt += 1
    p_cnt += p_array[i]
  end
end
puts [ac_cnt,p_cnt].join(" ")