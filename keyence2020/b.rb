n = gets.to_i
rs = n.times.map{gets.chomp.split.map(&:to_i)}.sort_by(&:first)
ary_dist = Array.new(n)
list = Array.new(n){Array.new}
(0..n-1).each do |i|
  list[i] = [i,[]]
end
cnt = 0
rs.each_with_index do |r,i|
  min = r[0] - r[1]
  max = r[0] + r[1]
  ary_dist[i] = [min,max]
end
ary_dist.each_with_index do |d,i|
  min = d[0]
  max = d[1]
  j = i+1
  while j < n &&  ary_dist[j][0] < max
    list[i][1] << j
    list[j][1] << i
    j += 1
  end
end
list_sort = list.sort_by{|a| a[1].size}.reverse
delete_array = Array.new(n,0)
stack = []
list_sort.each do |l|
  index = l[0]
  stack << l[1]
  delete_array[index] = 1
  while stack.size > 0
    k = stack.pop
    
end
p delete_array 

