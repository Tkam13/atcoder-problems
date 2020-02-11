n = gets.to_i
hs = gets.chomp.split.map(&:to_i)
dp = Array.new(n,10**18)
dp[0] = 0
dp[1] = (hs[1] - hs[0]).abs
(2..n-1).each do |i|
  dp[i] = [dp[i],dp[i-1] + (hs[i] - hs[i-1]).abs].min
  dp[i] = [dp[i],dp[i-2] + (hs[i] - hs[i-2]).abs].min
end
puts dp[-1]