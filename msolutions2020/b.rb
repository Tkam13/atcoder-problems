a,b,c = gets.chomp.split.map(&:to_i)
k = gets.to_i
cnt = 0
while a >= b
  cnt += 1
  b *= 2
end

while b >= c
  cnt += 1
  c *= 2
end

puts cnt <= k ? "Yes" : "No"
