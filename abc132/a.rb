s = gets.chomp.chars
hash = Hash.new(0)
s.each do |c|
  hash[c] += 1
end

if hash.size == 2 && hash.values.all?{|a| a == 2}
  puts "Yes"
else
  puts "No"
end