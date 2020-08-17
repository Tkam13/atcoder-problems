s = gets.chomp.reverse
strings = ["dream","dreamer","erase","eraser"].map(&:reverse)
while s != ""
	flag = false
	strings.each do |t|
		if s.slice(0,t.size) == t
			s.slice!(0,t.size)
			flag = true
		end
	end
	break if !flag
end

puts s == "" ? "YES" : "NO"