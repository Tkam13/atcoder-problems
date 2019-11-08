n = gets.to_i
as = n.times.map{gets.chomp.split.map{|x| x.to_i - 1 }}
ans = 0
flag = true
while flag
  skip = []
  flag = false 
  (0..n-1).each do |i|
    next if skip.include?(i) || as[i].empty?
    if i == as[as[i][0]][0]
      skip << as[i][0]
      as[as[i][0]].shift
      as[i].shift
      flag = true
    end
  end
  ans += 1
end
puts as.all?{|a| a.empty?} ? ans : -1