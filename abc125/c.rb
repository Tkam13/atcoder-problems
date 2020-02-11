# n = gets.to_i
# as = gets.chomp.split.map(&:to_i)
# gcd_f = [as[0]]
# gcd_b = [as[-1]]
# max = 0
# (1..n-1).each do |i|
#   gcd_f.push(as[i].gcd(gcd_f[-1]))
#   gcd_b.push(as[n-1-i].gcd(gcd_b[-1]))
# end
# (0..n-3).each do |i|
#   max = [max,gcd_f[i].gcd(gcd_b[n-3-i])].max
# end
# max = [max,gcd_f[n-2],gcd_b[n-2]].max
# puts max
# STDERR.print "#{gcd_f} \n"
# STDERR.print "#{gcd_b} \n" 

n = gets.to_i
as = gets.chomp.split.map(&:to_i)
array_forward = Array.new(n-1,0)
array_reverse = Array.new(n-1,0)
(0..n-1).each do |i|
  if i == 0
    array_forward[i] = as[i]
  elsif i > 0
    array_forward[i] = as[i].gcd(array_forward[i-1])
  end

  if n - i - 1 == n - 1
    array_reverse[n - i - 1] = as[n - i - 1]
  elsif n - i - 1 < n - 1
    array_reverse[n - i - 1] = as[n - i - 1].gcd()
end