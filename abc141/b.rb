s = gets.chomp.chars
flag = true
s.each_with_index do |c,i|
  if i.odd?
    break flag = false unless c == "L" || c == "U" || c == "D"
  else
    break flag = false unless c == "R" || c == "U" || c == "D"
  end
end

puts flag ? "Yes" : "No"
