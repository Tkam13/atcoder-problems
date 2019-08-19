n,q = gets.chomp.split.map(&:to_i)
ts = (n-1).times.map{gets.chomp.split.map(&:to_i)}
cs = q.times.map{gets.chomp.split.map(&:to_i)}
tree = Array.new(n){Array.new}
count = Array.new(n,0)

ts.each do |a,b|
  tree[a-1].push(b-1)
end
cs.each do|c,add|
  count[c-1] += add
end
count.each_with_index do|c,i|
  if !tree[i].empty?
    tree[i].each do |t|
      count[t] += count[i]
    end
  end
end
puts count.join(" ")