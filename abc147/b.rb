s = gets.chomp
s_rev = s.reverse
cnt = 0
(0..s.size-1).each do|i|
  if s[i] != s_rev[i]
    cnt += 1
  end
end
puts cnt / 2