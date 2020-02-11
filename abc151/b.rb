n,k,m = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
sum = as.inject(:+)
flag = false
(0..k).each do |i|
  if (sum + i) / n >= m
    puts i
    flag = true
    break
  end
end
if flag == false
  puts -1
end