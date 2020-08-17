r,c = gets.chomp.split.map(&:to_i)
os = r.times.map{gets.chomp.split.map(&:to_i)}
ans = 0
(2 ** r).times do |i|
	cnt = 0
	c.times do |k|
		cnt_c = 0
		r.times do |j|
			cnt_c += os[j][k] ^ i[j]
		end
		cnt_c = r - cnt_c if cnt_c < r - cnt_c
		cnt += cnt_c
	end
	ans = cnt if ans < cnt
end

puts ans