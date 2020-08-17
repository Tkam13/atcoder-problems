n = gets.to_i
tree = Array.new(n){Array.new}

(n-1).times do |i|
  a,b = gets.chomp.split.map{|x| x.to_i - 1}
  tree[a] << [b,i]
  tree[b] << [a,i]
end

max_color = 0
