a,b = gets.chomp.split.map(&:to_i)
ary = [a,b,a+b]
if ary.any?{|i| i % 3 == 0}
  puts "Possible"
else
  puts "Impossible"
end