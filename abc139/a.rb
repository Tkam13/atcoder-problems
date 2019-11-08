s = gets.chomp.chars
t = gets.chomp.chars
cnt = 0
(0..2).each do |i|
  if s[i] == t[i]
    cnt += 1
  end
end
puts cnt