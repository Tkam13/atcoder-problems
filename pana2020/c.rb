a,b,c = gets.chomp.split.map(&:to_i)
num = c - a - b
if Math.sqrt(a)*Math.sqrt(b)*2 < num
  puts "yes"
else
  puts "No"
end 