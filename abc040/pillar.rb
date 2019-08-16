N = gets.to_i
as = gets.chomp.split.map(&:to_i)
d = Array.new(N)
d[0] = 0
d[1] = (as[1] - as[0]).abs
2.upto(N-1) do |i|
  d[i] = [d[i-1] + (as[i] -as[i-1]).abs , d[i-2] + (as[i] - as[i-2]).abs ].min
end
p d[N-1]
