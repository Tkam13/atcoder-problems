n = gets.to_i
if n.odd?
  ans = 0
else
  n /= 2
  ans = 0
  div = 5
  while n / div > 0
    ans += (n / div)
    div *= 5
  end
end
puts ans