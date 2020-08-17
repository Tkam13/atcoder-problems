n = gets.to_i
ans = {"AC" => 0,"WA" => 0, "TLE" => 0,"RE" => 0}
arr = ["AC","WA","TLE","RE"]

n.times do 
  s = gets.chomp
  ans[s] += 1
end

arr.each do |c|
  puts "#{c} x #{ans[c]}"
end
