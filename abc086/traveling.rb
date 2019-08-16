n = gets.to_i
ts = n.times.map{gets.chomp.split.map(&:to_i)}
t_c = x_c = y_c = 0
flag = true
ts.each do |t,x,y|
  t_diff = t_c - t
  dist = (x - x_c)**2 + (y - y_c)**2
  if dist > t_diff**2 || ((x + y)-(x_c + y_c)-t_diff).odd?
    flag = false
  end
  t_c = t
  x_c = x
  y_c = y
end
puts flag ? "Yes" : "No"
