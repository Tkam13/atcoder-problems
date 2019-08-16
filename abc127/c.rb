n,m = gets.chomp.split.map(&:to_i)
gs = m.times.map{gets.chomp.split.map(&:to_i)}
lmax = 0
rmin = n+1
gs.each do |l,r|
  lmax = [l,lmax].max
  rmin = [r,rmin].min
end
puts [rmin - lmax + 1,0].max