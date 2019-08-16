n = gets.to_i
ds = gets.chomp.split.map(&:to_i).sort
puts [ds[n/2]-ds[(n-1)/2],0].max

