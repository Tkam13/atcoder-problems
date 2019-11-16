n = gets.to_i
cnt = 0
(1..n).each do|i|
  if i.odd?
    cnt += 1
  end
end

puts cnt / n.to_f