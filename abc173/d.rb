n = gets.to_i
as = gets.chomp.split.map(&:to_i).sort.reverse
sum = 0
queue = [as.shift]
as.each do |a|
  sum += queue.shift
  2.times do
    queue.push(a)
  end
end

puts sum
