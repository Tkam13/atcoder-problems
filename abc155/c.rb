n = gets.to_i
ss = n.times.map{gets.chomp}.sort
cnt = 1
max_cnt = cnt
present = ss.shift
ans_array = []
ss.each do |s|
  if s == present
    cnt += 1
  else
    if max_cnt < cnt
      ans_array = [present]
      max_cnt = cnt
    elsif max_cnt == cnt
      ans_array << present
    end
    cnt = 1
    present = s
  end
end
if max_cnt < cnt
  ans_array = [present]
  max_cnt = cnt
elsif max_cnt == cnt
  ans_array << present
end

ans_array.sort!.each do |ans|
  puts ans
end