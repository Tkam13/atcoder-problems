l,r,d = gets.chomp.split.map(&:to_i)
cnt = 0
(l..r).each do |i|
  if i % d == 0
    cnt += 1
  end
end

puts cnt
