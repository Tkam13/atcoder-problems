k,t = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i).sort.reverse
cur = 0
as.each do |a|
  cur = (cur - a).abs
end
puts [cur - 1 , 0].max