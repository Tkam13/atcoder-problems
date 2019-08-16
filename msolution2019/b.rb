s = gets.chomp.chars
puts 8 - s.count("o") <= 15 - s.size ? "YES" : "NO"