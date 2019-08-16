a,b,c,d = gets.chomp.split.map(&:to_i)

cnt_c = b/c - (a-1)/c
cnt_d = b/d - (a-1)/d
cnt_cd = b/c.lcm(d) - (a-1)/c.lcm(d)

puts b-a+1 - cnt_c - cnt_d + cnt_cd