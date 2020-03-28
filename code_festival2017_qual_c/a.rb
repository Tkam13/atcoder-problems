s = gets.chomp.chars
flag = false
s.each_cons(2) do |t|
  if t.join == "AC"
    flag = true
  end
end

puts flag ? "Yes" : "No"