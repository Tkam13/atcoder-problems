a,b,h,m = gets.chomp.split.map(&:to_f)
h_d = 30 * (h + (m/60))
m_d = 6 * m
d = [(h_d - m_d).abs, 360 - (h_d - m_d).abs].min
r2 = a ** 2 + b ** 2 - 2 * a * b * Math.cos(d * Math::PI / 180)
puts Math.sqrt(r2)