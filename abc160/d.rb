n,x,y = gets.chomp.split.map(&:to_i)
ans = Array.new(n,0)
# fin = Array.new(n){Array.new(n,0)}
graph = Array.new(n){Array.new}

(0..n-2).each do |i|
  graph[i] << i + 1
  graph[i+1] << i
end

graph[x-1] << y - 1
graph[y-1] << x - 1

(0..n-1).each do |i|
  queue = [i] 
  dist = Array.new(n,-1)
  dist[i] = 0
  until queue.empty?
    v = queue.shift
    graph[v].each do |nv|
      next if dist[nv] != -1
      dist[nv] = dist[v] + 1
      ans[dist[nv]] += 1
      queue.push(nv)
    end
  end
end
ans.shift
ans.each do |a|
  puts a / 2
end