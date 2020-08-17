n,k = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map{|a| a = a.to_i; a < 0 ? [-a,1]: [a,0]}.sort_by(&:first).reverse
MOD = 10 ** 9 + 7
ans = 1
cnt = 0
m_cnt = 0
p as

m_cnt_max = as.count{|a| a[1] == 1}

if m_cnt_max == n
  (1..k).each do |i|
    ans *= -as[-i][0]
    ans %= MOD
  end
else
  
end

as.each do |a,flag|
  if cnt < k - 1
    ans *= a % MOD
    cnt += 1
    m_cnt += 1 if flag
  elsif cnt == k - 1 && m_cnt.odd?
    if flag == 1
      m_cnt += 1
      ans *= a % MOD
      cnt += 1
    end
  elsif cnt == k - 1 && m_cnt.even?
    if flag == 0
      ans *= a
      cnt += 1
    end
  end
  ans %= MOD
  break if cnt == k
end


puts ans
