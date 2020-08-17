n = gets.to_i
as = gets.chomp.split.map(&:to_i)
ans = 0

def solve n,cnt
	if n % 2 != 0
		cnt
	else
		solve(n/2, cnt+1)
	end
end

as.each do |a|
	if a % 2 == 0
		ans += solve(a,0)
	end
end

puts ans.to_i