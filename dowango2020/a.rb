n = gets.to_i
ps = n.times.map{gets.chomp.split}
x = gets.chomp
ans = 0
flag = false
ps.each do |title,time|
  if flag
    ans += time.to_i
  end

  if title == x
    flag = true
  end
end
puts ans
