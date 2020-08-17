s = gets.chomp.chars.map.with_index{|c,i| i == 0 ? c.upcase : c.downcase}

puts s.join