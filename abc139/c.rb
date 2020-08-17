n = gets.to_i
hs = gets.chomp.split.map(&:to_i)
ans = 0
cnt = 0

n.times do |i|
  if i != n - 1 && hs[i] >= hs[i+1]
    cnt += 1
  else
    ans = cnt if ans < cnt
    cnt = 0
  end
end

puts ans