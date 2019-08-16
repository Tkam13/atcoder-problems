n = gets.to_i
as = gets.chomp.split.map(&:to_i)
ans = 1
while as[1]
  if as[1] > as[0]
    while as[1] && as[1] >= as[0]
      as.shift
    end
    ans += 1
    as.shift
  elsif as[1] < as[0]
    while as[1] && as[1] <= as[0]
      as.shift
    end
    ans += 1
    as.shift
  else
    as.shift
  end
end
if as.empty?
  ans -= 1
end
p ans
