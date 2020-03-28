x,y,z = gets.chomp.split.map(&:to_i)
cnt = 0
while (cnt + 1) * y + (cnt + 2) * z <= x
  cnt += 1
end
puts cnt