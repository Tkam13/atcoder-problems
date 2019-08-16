n = gets.to_i
as = gets.chomp.split.map(&:to_i).sort
m = as[-1].to_f
r = -1
as.each do |a|
  if (m/2-a).abs < (m/2-r).abs
    r = a
  end
end
puts "#{m.to_i} #{r}"
