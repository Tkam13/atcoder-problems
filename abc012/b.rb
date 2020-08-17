n = gets.to_i
h = n / 3600
n %= 3600
m = n / 60
n %= 60
s = n
puts [h.to_s.rjust(2,"0"),m.to_s.rjust(2,"0"),s.to_s.rjust(2,"0")].join(":")