s = gets.to_i
pos = [[0,0]]
a1 = b2 = Math.sqrt(s).ceil
b1 = 1
a2 = a1 * b2 - s
pos << [a1,a2]
pos << [b1,b2]
puts pos.join(" ")
