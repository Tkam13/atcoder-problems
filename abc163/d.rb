n,k = gets.chomp.split.map(&:to_i)
ans = 0
MOD = 10**9 + 7
min_num = (0..k-1).inject(:+) % MOD
max_num = (n-k+1..n).inject(:+) % MOD

while k <= n + 1
	ans += (max_num - min_num + 1) % MOD
	k += 1
	min_num += k - 1
	max_num += n - k + 1
end

puts ans % MOD