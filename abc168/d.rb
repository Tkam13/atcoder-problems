n,m = gets.chomp.split.map(&:to_i)
rs = m.times.map{gets.chomp.split.map(&:to_i)}

tree = Array.new(n){Array.new}

rs.each do |a,b|
	a -= 1; b -= 1
	tree[a] << b
	tree[b] << a
end

reached = Array.new(n,-1)
reached[0] = 0
queue = [0]

while !queue.empty?
	cur = queue.shift
	tree[cur].each do |i|
		if reached[i] == -1
			reached[i] = cur
			queue << i
		end
	end
end

if reached.any?{|r| r == -1}
	puts "No"
else
	puts "Yes"
	reached[1..-1].each do |r|
		puts r + 1
	end
end