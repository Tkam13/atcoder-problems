a,b = gets.chomp.split
ni = 0
nf = 0
digit = 0
b.size.times do |i|
	next if b[i] == "."
	t = (a.to_i * b[i].to_i) / (10 ** digit)
	s = (a.to_i * b[i].to_i) % (10 ** digit)
	ni += t
	nf += s * (10 ** (2 - digit))
	digit += 1
end

puts ni + (nf/100)