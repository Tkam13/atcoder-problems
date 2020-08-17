a,b,n = 3.times.map{gets.to_i}
lcm_n = a.lcm(b)
puts lcm_n * (n / lcm_n.to_f).ceil