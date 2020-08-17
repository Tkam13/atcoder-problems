n,m = gets.chomp.split.map(&:to_i)
hs = m.times.map{gets.chomp.split.map(&:to_i)}
array = Array.new(12){Array.new(12,0)}
hs.each do |x,y|
  array[x-1][y-1] = array[y-1][x-1] = 1
end
ans = 0
(2 ** n).times do |i|
  flag = true
  sum = 0
  n.times do |j|
    sum += i[j]
    n.times do |k|
      next if j == k || i[j] == 0 || i[k] == 0
      flag = false if array[j][k] != 1
    end
  end
  if flag
    ans = sum if ans < sum
  end
end

puts ans