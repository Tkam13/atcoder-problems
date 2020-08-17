n = gets.to_i
as = gets.chomp.split.map(&:to_i)
as.unshift(0);as.push(0);
sum = as.each_cons(2).map{|a,b| (a-b).abs}.inject(:+)
(1..n).each do |i|
	ans = sum
	ans -= (as[i-1] - as[i]).abs
	ans -= (as[i+1] - as[i]).abs
	ans += (as[i+1] - as[i-1]).abs
	puts ans
end