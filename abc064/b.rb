n = gets.to_i
as = gets.chomp.split.map(&:to_i).sort
puts as[-1] - as[0]
