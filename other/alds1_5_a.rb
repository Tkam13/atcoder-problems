n = gets.to_i
as = gets.chomp.split.map(&:to_i)
m = gets.to_i
bs = gets.chomp.split.map(&:to_i)
array = Array.new(10 ** 5){Array.new()}

bs.each_with_index do |b,i|
	array[b] << i
end

ans = Array.new(m,"no")

(2 ** n).times do |i|
	sum = 0
	n.times do |j|
		if i[j] == 1
			sum += as[j]
		end
	end
	array[sum].each do |a|
		ans[a] = "yes"
	end
end

puts ans