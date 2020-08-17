n,m = gets.chomp.split.map(&:to_i)
n -= 12 if n >= 12
rad = (n * 30 + 0.5 * m - m * 6).abs

puts [rad,360 - rad].min