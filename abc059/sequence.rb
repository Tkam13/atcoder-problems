n = gets.to_i
as = gets.chomp.split.map(&:to_i)
ans_o = ans_e = 0
sum_o = sum_e = 0

0.upto(n-1) do |i|
  sum_e += as[i]
  sum_o += as[i]
  if i.even?
    if sum_e <= 0
      ans_e += sum_e.abs + 1
      sum_e += sum_e.abs + 1
    end
    if sum_o >= 0
      ans_o += sum_o.abs + 1
      sum_o -= sum_o.abs + 1
    end

  else

    if sum_e >= 0
      ans_e += sum_e.abs + 1
      sum_e -= sum_e.abs + 1
    end
    if sum_o <= 0
      ans_o += sum_o.abs + 1
      sum_o += sum_o.abs + 1
    end
  end
end

puts [ans_e,ans_o].min
