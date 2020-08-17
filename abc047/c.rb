s = gets.chomp.chars
puts s.each_cons(2).count{|a,b| a != b}