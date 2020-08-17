n,m = gets.chomp.split.map(&:to_i)
as = m.times.map{gets.to_i}
MOD = 10**9+7

dp = Array.new(n+1,-1)
as.each do |a|
	dp[a] = 0
end
(n+1).times do |i|
	next if dp[i] == 0
	if i == 0 || i == 1
		dp[i] = 1
	else
		dp[i] = (dp[i-1] + dp[i-2]) % MOD
	end
end

puts dp[n]