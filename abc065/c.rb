n,m = gets.chomp.split.map(&:to_i).sort
MOD = 10**9+7
ans = 0
if m - n <= 1
  ans = (1..n).inject{|sum,x| sum * x % MOD} * (1..m).inject{|sum,x| sum * x % MOD} % MOD
  ans *= 2 if m == n
end

puts ans % MOD