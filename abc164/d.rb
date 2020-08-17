s = gets.chomp.reverse.split("").map(&:to_i)
ans = 0
mod = 2019
mod_array = Array.new(s.size,0)
hash = Hash.new(0)
mod_temp = Array.new(s.size,0)
mod_temp[0] = 1
(1..s.size).each do |i|
	mod_temp[i] = mod_temp[i-1] * 10 % mod
end

s.each_with_index do |c,i|
	t = mod_temp[i] * c
	if i == 0
		mod_array[i] = c % mod
	else
		mod_array[i] = (mod_array[i-1] + t) % mod
	end
	hash[mod_array[i]] += 1
end

hash.each do |k,v|
	if k == 0
		ans += v
	end
	ans += v * (v-1) / 2 if v > 1
end

puts ans