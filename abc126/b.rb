s = gets.chomp
a = s.slice(0,2).to_i
b = s.slice(2,2).to_i
if (0<a && a<=12) && (0<b && b<=12)
  puts "AMBIGUOUS"
elsif (0<a && a<=12) && !(0<b && b<=12)
  puts "MMYY"
elsif !(0<a && a<=12) && (0<b && b<=12)
  puts "YYMM"
else
  puts "NA"
end
