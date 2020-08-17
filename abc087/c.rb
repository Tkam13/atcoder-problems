n = gets.to_i
as = 2.times.map{gets.chomp.split.map(&:to_i)}

dp = Array.new(2){Array.new(n,0)}
dp[0][0] = as[0][0]
dp[1][0] = dp[0][0] + as[1][0]
(0..n-2).each do |i|
	dp[0][i+1] = dp[0][i] + as[0][i+1]
	dp[1][i+1] = [dp[1][i] + as[1][i+1], dp[0][i+1] + as[1][i+1]].max
end

puts dp[1][n-1]