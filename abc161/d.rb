k = gets.to_i
ls = [1,2,3,4,5,6,7,8,9]
opr = [-1,0,1]
ans = []
k.times do
	t = ls.shift
	ans << t
	d = t.to_s[-1].to_i
	opr.each do |o|
		if d + o >= 0 && d + o < 10
			ls << (t.to_s + (d + o).to_s).to_i
		end
	end
end

puts ans[k-1]