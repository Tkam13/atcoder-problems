n = gets.to_i
s = gets.chars
count = 0
(1..n).each do |i|
 array = (0..n-1).to_a.combination(i).to_a
 array.each do |a|
  ans = ""
  a.each do |_a|
     ans += s[_a]
   end
   if ans.size == ans.chars.uniq.size
     count += 1
   end
 end
end
puts count%(1e9+7).to_i
