n = gets.to_i
ans = ":("
(1..n).each do |i|
  if (i * 1.08).floor == n
    ans = i
  end
end

puts ans