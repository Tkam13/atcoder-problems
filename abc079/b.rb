n = gets.to_i
luca = Array.new(n+1)
luca[0] = 2
luca[1] = 1

(2..n).each do |i|
  luca[i] = luca[i-1] + luca[i-2]
end
puts luca[n]