n = gets.to_i
as = 2.times.map{gets.chomp.split.map(&:to_i)}
memo = Array.new(n)
1.upto(n) do |i|
  memo[i] = as[0][0..(i-1)].inject(:+) + as[1][(i-1)..(n-1)].inject(:+)
end
p memo.compact.max
