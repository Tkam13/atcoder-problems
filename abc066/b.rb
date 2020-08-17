s = gets.chomp
ans = 0
2.step(s.size-1, 2) do |i|
  if s.slice(0,i/2) == s.slice(i/2,i/2)
     ans = i
  end
end
puts ans

# s = gets.chomp
# flag = false
# while !flag
#   if s.size.even? 
#     s = s.slice(0,s.size - 2)
#   else
#     s = s.slice(0,s.size - 1)
#   end
#   if s[0..s.size/2 - 1] == s[s.size/2..-1]
#     flag = true
#   end
# end

# puts s.size