h,w = gets.chomp.split.map(&:to_i)
ps = h.times.map{gets.chomp.chars}
ans = Array.new(2*h){Array.new(w)}

(2*h).times do |i|
	w.times do |j|
		ans[i][j] = ps[i/2][j]
	end
end

ans.each do |a|
	puts a.join
end