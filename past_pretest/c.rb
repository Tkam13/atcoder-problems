N,T = gets.chomp.split.map(&:to_i)
roots = N.times.map{gets.chomp.split.map(&:to_i)}
ans = 10 ** 5
flag = false
roots.each do|c,t|
  if t <= T
    ans = [ans , c].min
    flag = true
  end
end
puts flag ? ans : "TLE"