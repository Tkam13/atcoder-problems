n,k = gets.chomp.split.map(&:to_i)
ps = gets.chomp.split.map(&:to_i).sort
sum = 0
k.times do |i|
  sum += ps[i]
end

puts sum
