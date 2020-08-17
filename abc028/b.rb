s = gets.chomp
hash = Hash.new(0)
array = ["A","B","C","D","E","F"]
ans = []

s.size.times do |i|
	hash[s[i]] += 1
end

array.each do |c|
	ans << hash[c]
end

puts ans.join(" ")