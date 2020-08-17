n = gets.to_i
as,bs = n.times.map{gets.chomp.split.map(&:to_i)}.transpose
as.sort!
bs.sort!
if n % 2 == 0
	ma = as[n/2] + as[n/2-1]
	mb = bs[n/2] + bs[n/2-1]
else
	ma = as[n/2]
	mb = bs[n/2]
end

puts mb - ma + 1