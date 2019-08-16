a,b,c = gets.chomp.split.map(&:to_i)
if [a,b].min <= c && c <= [a,b].max
  puts "Yes"
else
  puts "No"
end