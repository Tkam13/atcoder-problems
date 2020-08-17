n,l = gets.chomp.split.map(&:to_i)
xs = gets.chomp.split.map(&:to_i)
obj = Array.new(l+4,0)
xs.each do |x|
	obj[x] = 1
end
t1,t2,t3 = gets.chomp.split.map(&:to_i)
dp = Array.new(l+4,10**18)
dp[0] = 0
(0..l-1).each do |i|
	dp[i+1] = [dp[i+1], dp[i] + t1 + t3*obj[i+1] ].min
	dp[i+2] = [dp[i+2], dp[i] + t1 + t2 + t3*obj[i+2] ].min
	dp[i+4] = [dp[i+4], dp[i] + t1 + 3*t2 + t3*obj[i+4] ].min
end

dp[l] = [dp[l], dp[l-1] + (t1+t2)/2 ,dp[l-2] + (t1+3*t2)/2, dp[l-3] + (t1+5*t2)/2 ].min
puts dp[l]