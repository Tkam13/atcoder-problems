n,d = gets.chomp.split.map(&:to_i)
pos = n.times.map{gets.chomp.split.map(&:to_i)}
cnt = 0
pos.each do |x,y|
  if x ** 2 + y ** 2 <= d ** 2
    cnt += 1
  end
end

puts cnt
