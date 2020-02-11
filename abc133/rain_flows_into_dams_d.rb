n = gets.to_i
as = gets.chomp.split.map(&:to_i)
sum = 0
ans = []
as.each_with_index do |a,i|
  if i.even?
    sum += a
  else
    sum -= a
  end
end
ans << sum
(0..n-2).each do |i|
  ans << 2 * as[i] - sum
  sum = ans[-1]
end
puts ans.join(" ")
