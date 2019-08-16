w = gets.chomp.chars
u = w.uniq
ans = "Yes"
u.each do |_u|
  if w.count{|i| i == _u}.odd?
    ans = "No"
  end
end
puts ans
