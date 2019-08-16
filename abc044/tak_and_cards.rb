n,a = gets.chomp.split.map(&:to_i)
xs = gets.chomp.split.map(&:to_i)
# ans = 0
# 1.upto(n) do |i|
#   xs.combination(i) do |arr|
#     ans += 1 if arr.inject(:+) == i*a
#   end
# end
# p ans

dp = Array.new(n+1){Array.new(n+1){Array.new}}
0.upto(n) do |j|
  0.upto(j) do |k|
    if j == 0 && k == 0
      dp[j][k] = 1
    elsif j >= 1 && k*a < xs[j]
      dp[j][k] = dp[j-1][k]
