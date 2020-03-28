n = gets.to_i
xs,ys = n.times.map{gets.chomp.split.map(&:to_i)}.transpose
dists = Hash.new(0)
n.times do |i|
  n.times do |j|
    next if i == j
    x = xs[j] - xs[i]
    y = ys[j] - ys[i]
    
    dists[x*10**10 + y] += 1
  end
end
m = dists.values.max
if n == 1
  m = 0
end
puts n - m