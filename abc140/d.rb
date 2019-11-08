n,k = gets.chomp.split.map(&:to_i)
s = gets.chomp.chars
count_l = 0
count_r = 0
s.each do|c|
  if c == "L"
    count_l += 1
  else
    count_r += 1
  end
end

current = s.shift
sum = 0

s.each do |c|
  if current == "L" && c == "L"
    sum += 1
  elsif current == "R" && c == "R"
    sum += 1
  end
  current = c
end
puts [sum + 2*k , n-1].min