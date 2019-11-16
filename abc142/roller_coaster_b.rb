n,k = gets.chomp.split.map(&:to_i)
hs = gets.chomp.split.map(&:to_i)
cnt = 0
hs.each do|h|
  if h >= k
    cnt += 1
  end
end

puts cnt