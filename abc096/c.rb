h,w = gets.chomp.split.map(&:to_i)
gs = h.times.map{gets.chomp.chars}
d = [[0,1],[0,-1],[1,0],[-1,0]]
ans = true
h.times do |i|
	w.times do |j|
		next if gs[i][j] == "."
		flag = false
		d.each do |x,y|
			next if i+x >= h || i+x < 0 || j+y >= w || j+y < 0
 			if gs[i][j] == "#" && gs[i+x][j+y] == "#"
				flag = true
			end
		end
		ans = false if !flag 
	end
end

puts ans ? "Yes" : "No"