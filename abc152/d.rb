n = gets.to_i
n_digit = n.to_s.size
n_first = n.to_s[0].to_i
cnt = 0
(1..n).each do |i|
  i_digit = i.to_s.size
  i_first = i.to_s[0].to_i
  i_last = i.to_s[-1].to_i
  if i_first == i_last
    cnt += 1
  end
  next if i_last == 0
  k = 0
  loop do
    b = i_last * 10**(k+1) + i_first
    b_digit = b.to_s.size
    break if b > n
    if b_digit == n_digit && i_last == n_first
      cnt += (n - b) / 10 + 1
    else
      cnt += 10 ** k
    end
    k += 1
  end

end
puts cnt
