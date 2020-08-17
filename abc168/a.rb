n = gets.to_i
a = n % 10

if a == 3
	puts "bon"
elsif a == 0 || a == 1 || a == 6 || a == 8
	puts "pon"
else
	puts "hon"
end