a,b,x = gets.chomp.split.map(&:to_f)

if x/a > b/2
	y = 2*x/a - b
	r =  Math.atan((b-y)/a)
else
	y = 2*x/b
	r = Math.atan(b/y)
end

puts r * 180 / Math::PI