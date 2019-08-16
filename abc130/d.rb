n,k = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
cnt = 0
sum = 0
(0..n-1).each do |i|
  as[i..n-1].each_with_index do |a,j|
    sum += a
    if sum >= k
      cnt += n-j

puts cnt
