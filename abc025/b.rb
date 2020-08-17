n,a,b = gets.chomp.split.map(&:to_i)
pos = 0
n.times do
	s,d = gets.chomp.split
	d = d.to_i
	if d < a
		d = a
	elsif d > b
		d = b
	end
	if s == "West"
		d *= -1
	end
	pos += d
end

if pos < 0
	puts ["West",pos.abs].join(" ")
elsif pos > 0
	puts ["East",pos.abs].join(" ")
else
	puts pos
end