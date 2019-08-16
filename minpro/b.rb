roots = 3.times.map{gets.chomp.split.map(&:to_i)}
puts roots.join.chars.sort.join == "122334" ? "YES" :"NO"
