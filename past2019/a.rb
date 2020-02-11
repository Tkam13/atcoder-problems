s = gets.chomp
flag = false
("a".."z").each do |c|
  if s.include?(c)
    flag = true
    break
  end
end

puts flag ? "error" : s.to_i * 2