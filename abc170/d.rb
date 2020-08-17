require 'prime'

def solve n
	i = 1
	while n * i <= @a_max
		@dp[n * i] = 1
		i += 1
	end
end

n = gets.to_i
as = gets.chomp.split.map(&:to_i).sort
@a_max = as[-1]
@dp = Array.new(@a_max+1,0)
ans = 0

n.times do |i|
	a = as[i]
	ans += 1 if !(i < n - 1 && a == as[i+1]) && @dp[a] == 0
	solve(a) if @dp[a] == 0
end

puts ans