n,k = gets.chomp.split.map(&:to_i)
hs = gets.chomp.split.map(&:to_i)
dp = Array.new(n,10**18)
dp[0] = 0
dp[]