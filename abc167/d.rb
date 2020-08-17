n,k = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)

reached = Array.new(n,0)
cnt = 0
idx = 0
while reached[idx] == 0
	reached[idx] = cnt
	idx = as[idx] - 1
	cnt += 1
end
loop_num = cnt - reached[idx]

if cnt > k
	puts reached.index(k) + 1
else
	puts reached.index((k-cnt)%loop_num + reached[idx]) + 1
end