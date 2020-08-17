n = gets.chomp.chars
puts n.uniq.size == 1 ? "SAME" : "DIFFERENT"