a,b = gets.chomp.split.map(&:to_i)
if a + b < 10
  puts a + b
else
  puts "error"
end