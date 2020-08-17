n = gets.to_i

i = 1
while i * 1000 < n
  i += 1
end

puts i * 1000 - n
