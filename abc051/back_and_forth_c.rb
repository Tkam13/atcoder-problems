sx,sy,tx,ty = gets.chomp.split.map(&:to_i)
dx = tx - sx
dy = ty - sy
ans = "U" * dy + "R" * dx + "D" * dy + "L" * (dx+1) + "U" * (dy+1) + "R" * (dx+1) + "DR" + "D" * (dy+1) + "L" * (dx+1) + "U"
puts ans