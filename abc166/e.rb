n = gets.to_i
as = gets.chomp.split.map(&:to_i)
cnt = Hash.new(0)
ans = 0
as.each_with_index do |a,i|
	cnt[a - i - 1] += 1
end

as.each_with_index do |a,i|
	ans += cnt[-a-i-1]
end

puts ans