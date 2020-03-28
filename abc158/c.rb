a,b = gets.chomp.split.map(&:to_i)
left = [(a / 0.08),b / 0.1].max.ceil
right = [(a+1) / 0.08 , (b+1) / 0.1].min
if left >= right
  puts -1
else
  puts left
end
