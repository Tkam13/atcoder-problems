w,h = gets.chomp.split.map(&:to_i)
puts w/h.to_f > 4/3.to_f ? "16:9" : "4:3"