k,a,b = gets.chomp.split.map(&:to_i)
ans = 0
if a + 3 < b && (k >= a + 1)
  ans += b
  k = k - (a + 1)
  ans += (b-a)*(k/2)
  ans += k%2
else
  ans = k + 1
end

puts ans
