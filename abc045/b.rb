as,bs,cs = 3.times.map{gets.chomp.chars}
current = "a"

loop do
	if current == "a"
		break puts "A" if as.empty?
		current = as.shift
	elsif current == "b"
		break puts "B" if bs.empty?
		current = bs.shift
	else
		break puts "C" if cs.empty?
		current = cs.shift
	end
end

