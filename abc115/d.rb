n,x = gets.chomp.split.map(&:to_i)
ls,ps = [1],[1]
(1..n).each do |i|
	ls << ls[i-1] * 2 + 3
	ps << ps[i-1] * 2 + 1
end

def solve(n,x)
	if n == 0
		return 
	end
end