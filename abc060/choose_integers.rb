a,b,c = gets.chomp.split.map(&:to_i)
ans = "NO"
(1..b).each do |i|
  break ans = "YES" if a*i % b == c
end
puts ans
