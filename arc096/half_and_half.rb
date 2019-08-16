a,b,c,x,y = gets.chomp.split.map(&:to_i)
p_min = 1000000000000
n = x > y ? x : y
(0..n).each do |i|
  p = i*2*c + a*[0,x-i].max + b*[0,y-i].max
  p_min = p if p_min > p
end
puts p_min
