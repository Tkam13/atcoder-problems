n = gets.to_i
require 'prime'

factor = Prime.prime_division(n)
ans = 0
factor.each do |_,i|
	cnt = 0
	while cnt * (cnt + 1) <= 2 * i
		cnt += 1
	end
	ans += cnt - 1
end

puts ans