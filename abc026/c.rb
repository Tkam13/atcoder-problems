n = gets.to_i
@array = Array.new(n){Array.new}

(n-1).times do |i|
	@array[gets.to_i - 1] << i + 1
end

def rec n
	if @array[n].empty?
		res = 1
	else
		s = @array[n].map{|a| rec(a)}
		res = s.minmax.inject(:+) + 1
	end
end

puts rec(0)