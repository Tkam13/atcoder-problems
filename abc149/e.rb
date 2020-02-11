n,m = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i).sort.reverse
ans = 0
(0..n-1).each do |i|
  if i != 0
    if m >= 2
      ans += (as[i] + as[i-1]) * 2
      m -= 2
    elsif m >= 1
      ans += as[i] + as[i-1]
      m -= 1
    end
  end
  if m >= 1
    ans += as[i] * 2
    m -= 1
  end
  break if m == 0
end
puts ans

p as