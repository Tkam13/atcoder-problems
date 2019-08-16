r,d,x = gets.chomp.split.map(&:to_i)
10.times do
  puts r*x - d
  x = r*x -d
end
