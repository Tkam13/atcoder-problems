n,d = gets.chomp.split.map(&:to_i)
xs = n.times.map{gets.chomp.split.map(&:to_i)}
cnt = 0

(0..n-1).to_a.combination(2) do |i,j|
  dist = 0
  (0..d-1).each do |k|
    dist += (xs[i][k] - xs[j][k])**2
  end
  cnt += 1 if Math.sqrt(dist).to_i**2 == dist
end

puts cnt