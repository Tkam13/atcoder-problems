n = gets.to_i
tribo = Array.new(n,0)
MOD = 10007
tribo[1] = 0
tribo[2] = 1
(3..n-1).each do |i|
	tribo[i] = (tribo[i-1] + tribo[i-2] + tribo[i-3]) % MOD
end

puts tribo[n-1]