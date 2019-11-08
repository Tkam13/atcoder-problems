m,d = gets.chomp.split.map(&:to_i)
cnt = 0
(1..m).each do|k|
  (0..d).each do|i|
    if (i/10)*(i%10) == k && i/10 >= 2 && i%10>=2
      cnt += 1
    end
  end
end
puts cnt