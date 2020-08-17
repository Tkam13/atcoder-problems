n = gets.to_i

def divisor(n)
	array = []
	(1..Math.sqrt(n)).each do |i|
		if n % i == 0
			array << i
			array << n / i unless i ** 2 == n
		end
	end
	array
end

ans = 0
ans += divisor(n-1).size - 1
divisor(n).each do |i|
	next if i == 1
	temp = n
	while temp % i == 0
		temp /= i
	end
	ans += 1 if temp % i == 1
end

puts ans