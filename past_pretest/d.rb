s = gets.chomp
cnt_one = s.count("1")
cnt_zero = s.count("0")
puts [cnt_one , cnt_zero].min * 2