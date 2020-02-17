n = gets.chomp.reverse
cnt = 0
flag = false
n.size.times do |i|
  k = n[i].to_i
  if flag
    k += 1
    flag = false
  end
  if k < 5
    cnt += k
  elsif k == 5
    if i != n.size && n[i+1].to_i >= 5
      cnt += k
      flag = true
    else
      cnt += k
    end
  else
    cnt += 10 - k
    flag = true
  end
end
cnt += 1 if flag
puts cnt