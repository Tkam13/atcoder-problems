s = gets.chomp
t = s.to_s.size - 1
sum = 0
(2 ** t).times do |i|
  temp = s.dup
  t.times do |j|
    k = s.size - temp.size
    if i[j] == 1
      sum += temp.slice!(0,j-k+1).to_i
    end
  end
  sum += temp.to_i
end
puts sum