h = gets.to_i
cnt = 0
ans = 1
loop do
  ans += (2 ** cnt)
  h /= 2
  cnt += 1
  break if h == 0
end
puts ans - 1