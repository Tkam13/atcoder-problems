n,x = gets.chomp.split.map(&:to_i)
ls = gets.chomp.split.map(&:to_i)
cnt = 1
d = 0
ls.each do |l|
  d += l
  if d <= x
    cnt += 1
  else
    break
  end
end
puts cnt