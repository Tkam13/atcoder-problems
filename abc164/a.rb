s,w = gets.chomp.split.map(&:to_i)
puts w >= s ? "unsafe" : "safe"