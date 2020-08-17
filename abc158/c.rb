a,b = gets.chomp.split.map(&:to_i)
left = [(a / 0.08),b / 0.1].max.ceil
right = [(a+1) / 0.08 , (b+1) / 0.1].min
if left >= right
  puts -1
else
  puts left
end

# a,b = gets.chomp.split.map(&:to_i)
# ans = []
# (10*b..10*(b+1)).each do |i|
#   ((12.5*a).ceil..(12.5*(a+1)).ceil).each do |j|
#     ans << i if i == j
#   end
# end

# puts ans.empty? ? -1 : ans.min