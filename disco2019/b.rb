n = gets.to_i
as = gets.chomp.split.map(&:to_i)
r = n-1
l = 0
r_sum = as[-1]
l_sum = as[0]
while l + 1 != r
  if r_sum > l_sum
    l += 1
    l_sum += as[l]
  else
    r -= 1
    r_sum += as[r]
  end
end
puts (r_sum - l_sum).abs
