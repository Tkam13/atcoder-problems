n = gets.to_i
ans = 10**18
(1..Math.sqrt(n)).each do |i|
	if n % i == 0
		ans = [ans,(n/i).to_s.size].min
	end
end

puts ans