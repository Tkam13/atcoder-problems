a,b,c = gets.chomp.split.map(&:to_i)
MOD = 10 ** 9 + 7
puts a * b % MOD * c % MOD