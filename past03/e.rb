n,m,q = gets.chomp.split.map(&:to_i)
g = Array.new(n){Array.new}

m.times do
	x,y = gets.chomp.split.map(&:to_i)
	g[x-1] << y-1
	g[y-1] << x-1
end

color = gets.chomp.split.map(&:to_i)
qs = q.times.map{gets.chomp.split.map(&:to_i)}

qs.each do |i,x,y|
	x -= 1
	if i == 1
		puts color[x]
		g[x].each do |u|
			color[u] = color[x]
		end
	elsif i == 2
		puts color[x]
		color[x] = y
	end
end