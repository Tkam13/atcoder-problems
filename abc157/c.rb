n,m = gets.chomp.split.map(&:to_i)
ts = m.times.map{gets.chomp.split.map(&:to_i)}
flag = Array.new(n,0)
ans = Array.new(n,0)
ts.each do |s,c|
  if flag[s-1] == 1 && ans[s-1] != c
    ans = [-1]
    break
  end
  if n != 1 && s == 1 && c == 0
    ans = [-1]
    break
  end
  flag[s-1] = 1
  ans[s-1] = c
end

if n !=1 && ans[0] == 0
  ans[0] = 1
end
puts ans.join
