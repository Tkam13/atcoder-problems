n = gets.to_i
bs = gets.chomp.split.map(&:to_i)

que = [bs[0]]
sum = 0
while !que.empty?
  if !bs.empty?
    que.push(bs.shift)
  end
  sum += que.min
  que.shift
end
puts sum