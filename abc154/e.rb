n = gets.to_i
k = gets.to_i
digit_n = n.size
ans = 0
if digit_n < k
  puts ans
  exit 0
end


(k..digit_n).each do|i|
  if digit_n != i
    ans += 9 ** k * [*1..i-1].combination(k-1).size
  else
    temp = 0
    k.times do |j|
      top = n / (10 ** (digit_n - j)) % 10
      temp += (top - 1) * 9 ** (k - 1) * [*1..i-1].combination(k-1).size
    end
    ans += temp
  end
  p ans
end
puts ans
