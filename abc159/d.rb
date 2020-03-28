n = gets.to_i
as = gets.chomp.split.map(&:to_i)
array = Array.new(n+1,0)
sum = 0
ans = []
as.each do |a|
  array[a-1] += 1
end
n.times do |i|
  j = array[i]
  sum += j * (j-1) / 2
end
n.times do |i|
  j = as[i] - 1
  ans << sum - array[j] + 1
end
puts ans