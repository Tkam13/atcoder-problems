require 'set'
s = gets.chomp
k = gets.to_i
set = Set.new

if s.size >= k
	(0..s.size-k).each do |i|
		set << s.slice(i,k)
	end
end

puts set.size