n,d,a = gets.chomp.split.map(&:to_i)
ms = n.times.map{gets.chomp.split.map(&:to_i)}.sort_by(&:first)
cnt = 0
damages = [[0,0]]
ms.each do |x,h|
  while !damages.empty?
    damage = damages.shift
    if damage[0] >= x
      h -= damage[1]
    end
  end
  if h <= 0
    damages.unshift(damage)
    next
  end
  cnt += (h/a).ceil
  d_point = (h/a).ceil * a
  damages.map!{|u,v| [u,v + d_point] }
  if damage != nil
    damages.unshift([damage[0] , damage[1] + d_point])
  end
  damages.push([x + d*2,d_point])
end
puts cnt