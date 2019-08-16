n = gets.to_i
hs = gets.chomp.split.map(&:to_i)
current = hs.shift
cnt = 1
hs.each do |h|
  if h >= current
    current = h
    cnt += 1
  end
end
puts cnt