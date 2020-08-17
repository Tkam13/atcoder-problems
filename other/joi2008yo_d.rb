require 'set'
n = gets.to_i
cs = n.times.map{gets.chomp.split.map(&:to_i)}
m = gets.to_i
stars = m.times.map{gets.chomp.split.map(&:to_i)}
cs_dist = cs.each_cons(2).map{|a,b|
	[b[0] - a[0],b[1] - a[1]]
}

set = stars.to_set

stars.each do |x,y|
	flag = true
	tx = x
	ty = y
	cs_dist.each do |dx,dy|
		unless set.include?([tx+dx, ty+dy])
			flag = false
			break
		end
		tx += dx
		ty += dy
	end
	if flag
		puts [x - cs[0][0] , y - cs[0][1]].join(" ")
	end
end