a,b,c,d = gets.chomp.split.map(&:to_i)
tr = b / a.to_f
ar = d / c.to_f

if tr > ar
	puts "TAKAHASHI"
elsif tr == ar
	puts "DRAW"
else
	puts "AOKI"
end