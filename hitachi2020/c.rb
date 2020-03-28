n = gets.to_i
list = Array.new(n,[])
n-1.times do
  a,b = gets.chomp.split.map(&:to_i)
  a -= 1
  b -= 1
  list[a] << b
  list[b] << a
end
reached = Array.new(n,-1)
que = list[0]
dist = 0
reached[0] = 0
while !stack.empty?
  current = stack.shift

end