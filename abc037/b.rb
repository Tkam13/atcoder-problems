n,q = gets.chomp.split.map(&:to_i)
ls,rs,ts = q.times.map{gets.chomp.split.map(&:to_i)}.transpose

ans = Array.new(n,0)

q.times do |i|
	(ls[i]-1).upto(rs[i]-1) do |j|
		ans[j] = ts[i]
	end
end

puts ans