a,b,x = gets.chomp.split.map(&:to_i)
MAX = 1e9.to_i
d = 1
loop do
  break if a * 10 ** d + b * d > x
  d += 1
end

puts [(x - b * d).abs / a , MAX].min

# def dig(n)
#   n.to_s.size
# end
# if x >= a * MAX + b * dig(MAX) 
#   ans = MAX
# else
#   ans = (0..MAX).bsearch do |n|
#       a * n <= x - b * dig(n)
#   end
# end
# puts ans