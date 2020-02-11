n = gets.to_i
s_array = n.times.map{gets.chomp.chars.sort.join}.sort
cnt = 0
ans = 0
current_s = s_array[0]
flag = false
s_array.each do |s|
  if s == current_s
    flag = false
    cnt += 1
  else
    flag = true
    ans += (1..cnt).to_a.combination(2).size
    cnt = 1
    current_s = s
  end
end
if flag == false
  ans += (1..cnt).to_a.combination(2).size
end
puts ans

