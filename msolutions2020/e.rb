n = gets.to_i
cities = n.times.map do 
  x,y,population = gets.chomp.split.map(&:to_i)
  d = x < y ? x : y
  [x,y,population,d]
end

