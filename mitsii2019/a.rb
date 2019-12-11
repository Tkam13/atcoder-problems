m1 , d1 = gets.chomp.split.map(&:to_i)
m2 , d2 = gets.chomp.split.map(&:to_i)
if m1 != m2 && d2 == 1
  puts 1
else
  puts 0
end