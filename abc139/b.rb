a,b = gets.chomp.split.map(&:to_i)
cnt = 1
i = 0
while cnt < b
  i += 1
  cnt += a-1
end
puts i