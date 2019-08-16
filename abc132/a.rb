s = gets.chomp.chars
u = s.uniq
flag = true
u.each do |i|
  if s.count(i) != 2
    flag = false
    break
  end
end
puts flag && u.size == 2 ? "Yes" : "No"