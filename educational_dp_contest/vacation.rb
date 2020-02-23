n = gets.to_i
ts = n.times.map{gets.chomp.split.map(&:to_i)}
dp = Array.new(n+1){Array.new(3,0)}
0.upto(n-1) do |i|
  0.upto(2) do |j|
    0.upto(2) do |k|
      next if j == k
      if dp[i+1][k] < dp[i][j] + ts[i][k]
        dp[i+1][k] = dp[i][j] + ts[i][k]
      end
    end
  end
end
puts dp[n].max