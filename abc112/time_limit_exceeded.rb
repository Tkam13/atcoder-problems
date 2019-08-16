n,t = gets.chomp.split.map(&:to_i)
rs = n.times.map{gets.chomp.split.map(&:to_i)}.sort_by(&:first)
ans = "TLE"
rs.each do |r|
  if r[1] <= t
    ans = r[0].to_s
    break
  end
end
puts ans
