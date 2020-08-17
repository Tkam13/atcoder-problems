w,a,b = gets.chomp.split.map(&:to_i)
if a-w <= b && b <= a+w
	puts 0
else
	puts [(a-b).abs, (a+w-b).abs,(b+w-a).abs].min
end