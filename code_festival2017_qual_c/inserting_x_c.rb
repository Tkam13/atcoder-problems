s = gets.chomp.chars
first = s[0]
last = s[-1]
cnt = 0
while !s.empty?
  if first == last
    s.shift
    s.pop
    first = s[0]
    last = s[-1]
  elsif first == "x"
    s.shift
    first = s[0]
    cnt += 1
  elsif last == "x"
    s.pop
    last = s[-1]
    cnt += 1
  else
    break cnt = -1
  end
end
puts cnt