x,y = gets.chomp.split.map(&:to_i)
ans = 0
if x == 1 && y == 1
  ans += 400000
end
ans += [400000 - 100000 * x,0].max
ans += [400000 - 100000 * y,0].max

puts ans