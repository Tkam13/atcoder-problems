n,k = gets.chomp.split.map(&:to_i)
@R,@S,@P = gets.chomp.split.map(&:to_i)
T = gets.chomp
ans = 0
def score(c)
  if c == "r"
    @P
  elsif c == "s"
    @R
  elsif c == "p"
    @S
  end
end
(0..k-1).each do |i|
  current = T[i]
  flag = true
  ans += score(T[i])
  loop do
    i += k
    break if i >= n
    if T[i] == current
      if flag
        flag = false
      else
        ans += score(T[i])
        flag = true
      end
    else
      ans += score(T[i])
      flag = true
    end
  current = T[i]
  end
end
puts ans

