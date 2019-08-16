n = gets.to_i
s = gets.chars
i = s.count{|k| k == "R"}
if i > n-i 
    puts "Yes"
else 
    puts "No"
end