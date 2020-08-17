a,b,c,k = gets.chomp.split.map(&:to_i)
s,t = gets.chomp.split.map(&:to_i)
sum = a * s + b * t
if s + t >= k
	sum -= c * (s+t)
end

puts sum