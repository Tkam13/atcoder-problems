n = gets.to_i
hs = gets.chomp.split.map(&:to_i)

n.times do |i|
  if i == 0 || hs[i-1] < hs[i]
    hs[i] -= 1
  end
end

if hs.each_cons(2).all?{|a,b| a <= b}
  puts "Yes"
else
  puts "No"
end
