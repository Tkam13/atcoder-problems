n,m,q = gets.chomp.split.map(&:to_i)
ss = q.times.map{gets.chomp.split.map(&:to_i)}
array = Array.new(n){Array.new}
score = Array.new(m,n)
ss.each do |i,n,m|
	if i == 1
		cnt = 0
		array[n-1].each do |a|
			cnt += score[a]
		end
		puts cnt
	elsif i == 2
		score[m-1] -= 1
		array[n-1] << m - 1
	end
end
