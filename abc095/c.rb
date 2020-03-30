a,b,c,x,y = gets.chomp.split.map(&:to_i)
ans = 10 ** 18
0.upto([x,y].max) do |i|
  sum = a * [x-i, 0].max + b * [y-i ,0].max + (c * i * 2)
  ans = sum if ans > sum
end

puts ans