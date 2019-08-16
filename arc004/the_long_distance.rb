n = gets.to_i
ts = n.times.map{gets.strip.split.map(&:to_i)}
def distance(corrent,next_data)
  xc,yc = corrent
  xn,yn = next_data
  dist = ((xn - xc)**2 + (yn - yc)**2)**(1/2.0)
end
ans = 0
corrent = ts[0]
n.times do |i|
  corrent = ts[i]
  ts.each do |t|
    if distance(corrent,t) > ans
       ans = distance(corrent,t)
    end
  end
end
puts ans
