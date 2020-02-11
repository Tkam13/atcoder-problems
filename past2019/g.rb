n = gets.to_i
i_temp = 1
as = (n-1).times.map do 
  temp = gets.chomp.split.map(&:to_i)
  i_temp.times do
    temp.unshift(nil)
  end
  i_temp += 1
  temp
end
ans = -1e18.to_i
[0,1,2].repeated_permutation(n).each do |array|
  sum_0 = 0
  sum_1 = 0
  sum_2 = 0
  (0..n-2).each do |i|
    d = array[i]
    (i+1..n-1).each do|j|
      if array[j] == d
        if d == 0
          sum_0 += as[i][j]
        elsif d == 1
          sum_1 += as[i][j]
        elsif d == 2
          sum_2 += as[i][j]
        end
      end
    end
  end
  ans = [ans , sum_0 + sum_1 + sum_2].max
end
puts ans
