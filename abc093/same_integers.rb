a,b,c = gets.chomp.split.map(&:to_i).sort
diff = (c-a) + (c-b)

if c % 2 == a % 2 && c % 2 == b % 2
  puts diff/2 
elsif a % 2 == b % 2
  puts (diff-2)/2 + 1
else
  puts (diff+1)/2 + 1
end