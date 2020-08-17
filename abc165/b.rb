x = gets.to_i 
n = 100
ans = 0
while n < x
	n = (n * 1.01).floor
	ans += 1
end
puts ans