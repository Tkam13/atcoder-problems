n = gets.to_i
hs = gets.chomp.split.map(&:to_i)
dp = Array.new(n,10**18)
dp[0] = 0
(0..n-1).each do |i|
  dp[i+1] = [dp[i+1],dp[i] + (hs[i] - hs[i+1]).abs].min if i+1 < n
  dp[i+2] = [dp[i+2],dp[i] + (hs[i] - hs[i+2]).abs].min if i+2 < n
end
puts dp[n-1]