class Cells
  def initialize
    @cells = {}
  end

  def [](row_index, col_index)
    @cells[[row_index, col_index]]
  end

  def []=(row_index, col_index, value)
    @cells[[row_index, col_index]] = value
  end
end

n = gets.to_i
ts = (n-1).times.map{gets.chomp.split.map(&:to_i)}
tree = Array.new(n+1){Array.new}
ans = Cells.new
k = 0
queue = [1]
parent_color = Array.new(n+1,0)
used_point = Array.new(n+1,0)
used_point[1] = 1
ts.each do |a,b|
  tree[a] << b
  tree[b] << a
end
while !(queue.empty?)
  v = queue.shift
  k = [tree[v].size , k].max
  current_color = 1
  tree[v].each do |u|
    next if used_point[u] == 1
    current_color += 1 if current_color == parent_color[v]
    parent_color[u] = ans[u,v] = ans[v,u] = current_color
    current_color += 1
    used_point[u] = 1
    queue.push(u)
  end
end

puts k
ts.each do|a,b|
  puts ans[a,b]
end