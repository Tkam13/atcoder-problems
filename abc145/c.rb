n = gets.to_i
pos = n.times.map{gets.chomp.split.map(&:to_f)}

sum = 0
cnt = 0
[*0..n-1].permutation(n) do |a|
  cnt += 1
  a.each_cons(2) do |i,j|
    dist = (pos[i][0] - pos[j][0]) ** 2 + (pos[i][1] - pos[j][1]) ** 2
    sum += Math.sqrt(dist)
  end
end

puts sum / cnt
