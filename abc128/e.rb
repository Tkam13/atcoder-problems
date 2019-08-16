n,q = gets.chomp.split.map(&:to_i)
cs = n.times.map{gets.chomp.split.map(&:to_i)}.sort_by(&:last)
ds = q.times.map{gets.to_i}
construction = Hash.new

