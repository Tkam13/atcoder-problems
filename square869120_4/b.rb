n,k = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
ans = 10 ** 18

(2**n).times do |i|
  cnt = 0
  cost = 0
  height = 0
  n.times do |j|
    add = 0
    if i[j] == 1
      cnt += 1
      add = [height - as[j] + 1,0].max
    end
    cost += add
    height = as[j] + add if height < as[j] + add
  end
  ans = cost if cnt >= k && ans > cost
end

puts ans
