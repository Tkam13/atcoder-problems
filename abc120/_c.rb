s = gets.chomp.chars.map(&:to_i)
count = 0
i = 0
loop do
  n = s.size
  break if n < 2
  reduse = false
  if s[i] + s[i+1] == 1
    s.slice!(i..i+1)
    count += 1
    reduce = true
    i = 0
  else
    i += 1
  end
  break if !reduse && i == n-2
end
puts count*2
