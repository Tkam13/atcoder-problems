km = gets.to_f / 1000

if km < 0.1
	puts "00"
elsif km <= 5
	puts (10*km).floor.to_s.rjust(2,"0")
elsif km >= 6 && km <= 30
	puts (km + 50).floor
elsif km >= 35 && km <= 70
	puts ((km-30)/5 + 80).floor
elsif km >= 70
	puts 89
end