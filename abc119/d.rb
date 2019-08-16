a,b,q = gets.chomp.split.map(&:to_i)
ss = a.times.map{gets.to_i}
ts = b.times.map{gets.to_i}
xs = q.times.map{gets.to_i}

xs.each do |x|
