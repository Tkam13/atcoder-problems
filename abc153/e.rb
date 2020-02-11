h,n = gets.chomp.split.map(&:to_i)
magic = n.times.map do
  a,b = gets.chomp.split.map(&:to_i)
  c = b/a.to_f
  [a,b,c]
end
magic_cost = magic.sort_by(&:last)
ans = h / magic_cost[0][0] * magic_cost[0][1]
if h % magic_cost[0][0] != 0
  h %= magic_cost[0][0]
  p [h,ans]
  p magic_cost
  magic.sort_by!{|a,b,c| b}
  magic.each do |a,b,c|
    if a > h
      ans += b
      break
    end
  end
end
puts ans