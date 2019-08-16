n = gets.to_i
as = n.times.map{gets.to_i}
as.unshift(0)
flag = Array.new(n+1,false)
flag[1] = true
l = as[1]
cnt = 1
flag[l] = true
loop do
  break if l == 2
  l = as[l]
  cnt += 1
  break if flag[l]
  flag[l] = true
end
puts flag[2] ? cnt : -1
