n,k = gets.chomp.split.map(&:to_i)

array = Array.new(n,0)
k.times do
	d = gets.to_i
	as = gets.chomp.split.map(&:to_i)
	as.each do |a|
		array[a-1] += 1
	end
end

puts array.count(0)