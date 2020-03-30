s = gets.chomp.chars
if s.size == s.uniq.size
  puts "yes"
else
  puts "no"
end