n,m = gets.chomp.split.map(&:to_i)
bridges = m.times.map{gets.chomp.split.map(&:to_i)}.reverse
ans = Array.new(m+1,0)
memo = Array.new(n+1,0)
ans[m] = n*(n-1)/2
i = m
count = 0
bridges.each do |a,b|
  i -= 1
  if memo[a] == 1 || memo[b] == 1
    ans[i] = ans[m] - count*(count-1)/2
    count += 1
  else
    ans[i] = ans[i+1] - 1
    count 
