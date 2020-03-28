n = gets.to_i
ps = gets.chomp.split.join
qs = gets.chomp.split.join
array = []
[*1..n].permutation do |t|
  array << t.map(&:to_s).join
end
ans = 0
array.each_with_index do |t,i|
  if t == ps
    ans += (i + 1)
  end
  if t == qs
    ans -= (i + 1)
  end
end
puts ans.abs