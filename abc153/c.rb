n,k = gets.chomp.split.map(&:to_i)
hs = gets.chomp.split.map(&:to_i).sort.reverse
if n <= k
  puts 0
else
  puts hs[k..n-1].inject(:+)
end