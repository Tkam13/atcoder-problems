s = gets.chomp.chars
t = gets.chomp.chars
cnt = 0

s.each_with_index do |c,i|
  if t[i] != c
    cnt += 1
  end
end

puts cnt
