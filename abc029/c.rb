n = gets.to_i
array = ["a","b","c"]
ans = [""]

while ans[0].size < n
	t = ans.shift
	array.each do |c|
		ans << t + c
	end
end

puts ans.sort