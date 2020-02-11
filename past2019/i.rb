n,m = gets.chomp.split.map(&:to_i)
set = m.times.map do
  s,c = gets.chomp.split
  [s,c.to_i]
end.sort_by(&:last)
cnt = 0