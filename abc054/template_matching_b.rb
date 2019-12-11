n,m = gets.chomp.split.map(&:to_i)
as = n.times.map{gets.chomp}
bs = m.times.map{gets.chomp}
ans_flag = true
catch(:break_loop_b) do
  (0..n-m).each do|i|
    (0..n-m).each do|j|
      ans_flag = true
      catch(:break_loop_a) do
        (0..m-1).each do|x|
          (0..m-1).each do|y|
            if as[i+x][j+y] != bs[x][y]
              ans_flag = false
              throw :break_loop_a
            end
          end
        end
      end
      throw :break_loop_b if ans_flag == true
    end
  end
end
puts ans_flag ? "Yes" : "No"