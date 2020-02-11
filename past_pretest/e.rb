n,m = gets.chomp.split.map(&:to_i)
cities = [] 
m.times do |i|
  a,b = gets.chomp.split.map(&:to_i)
  cities << [a,b,i]
end
cities.sort_by!(&:first).sort_by!{|x| x[1]}
cnt = Array.new(n+1,0)
ans = []
cities.each do |pf , y ,i|
  cnt[pf] += 1
  ans_str = pf.to_s.rjust(6,"0") + cnt[pf].to_s.rjust(6,"0")
  ans << [ans_str,i]
end

ans.sort_by!(&:last)
ans.each do |str,i|
  puts str
end