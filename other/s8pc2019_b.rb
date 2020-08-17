n = gets.to_i
as,bs = n.times.map{gets.chomp.split.map(&:to_i)}.transpose

ans = 10 ** 18
as.each do |a|
  bs.each do |b|
    sum = 0
    n.times do |i|
      sum += (a - as[i]).abs + (as[i] - bs[i]).abs + (bs[i] - b).abs
    end
    ans = sum if ans > sum
  end
end

puts ans