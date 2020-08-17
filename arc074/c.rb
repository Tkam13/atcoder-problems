h,w = gets.chomp.split.map(&:to_i)
def solve h,w
	res = 10**18
	(1..h-1).each do |i|
		s = h*w
		# 縦割り
		s1 = i * w
		s2 = w/2 * (h-i)
		s3 = s - s1 - s2
		t = [s1,s2,s3].minmax

		# 横割り
		s2 = (h-i)/2 * w
		s3 = s - s1 - s2
		u = [s1,s2,s3].minmax
		
		res = [res,t[1] - t[0],u[1] - u[0]].min
	end
	res
end

puts [solve(h,w),solve(w,h)].min