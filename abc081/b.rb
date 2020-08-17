n = gets.to_i
as = gets.chomp.split.map(&:to_i)

def index n
	cnt = 0
	while n % 2 == 0
		cnt += 1
		n /= 2
	end
	cnt
end

puts as.map{|a| index(a)}.min