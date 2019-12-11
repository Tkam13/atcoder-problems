s = gets.chomp
words = ["dream","dreamer","erase","eraser"]
loop do
  flag = false
  words.each do |w|
   if s.slice(s.size - w.size,w.size) == w
    flag = true
    s = s.slice(0,s.size-w.size)
    break
   end
  end
  break if flag == false
end

puts s == "" ? "YES" : "NO"