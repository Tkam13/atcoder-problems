n = gets.to_i
as = gets.chomp.split.map(&:to_i).sort
sum = 0
index = -1
as.each_with_index do |a,i|
  if sum * 2 < a
    index = i
  end
  sum += a
end

puts n - index