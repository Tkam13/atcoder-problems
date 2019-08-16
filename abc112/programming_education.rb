n = gets.to_i
if n == 2
  a,b = 2.times.map{gets.to_i}
end
puts n == 1 ? "Hello World" : a + b
