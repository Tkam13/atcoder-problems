n,k = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
l = -1
r = 0
sum = 0
ans = 0
while r < n
  sum += as[r]
  if sum >= k
    ans += n - r
    while l < r
      l += 1
      sum -= as[l]
      if sum >= k
        ans += n - r
      else
        break
      end
    end
  end
  r += 1
end
puts ans
