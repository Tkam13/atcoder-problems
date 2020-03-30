s = gets.chomp
ans = 0
2.step(s.size-1, 2) do |i|
  if s.slice(0,i/2) == s.slice(i/2,i/2)
     ans = i
  end
end
puts ans
