n,m = gets.chomp.split.map(&:to_i)
ls = m.times.map{gets.chomp.split.map(&:to_i)}
path = Array.new(n){Array.new}
flag = false

ls.each do |a,b|
  a -= 1
  b -= 1
  path[a] << b
  path[b] << a
end
stack = path[0]
stack.each do |i|
  if path[i].include?(n-1)
    flag = true
  end
end

puts flag ? "POSSIBLE" : "IMPOSSIBLE"