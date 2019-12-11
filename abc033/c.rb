s = gets.chomp.split("+")
ans = 0
s.each do |a|
  if !((a.include?("*") && a.include?("0")) || a == "0" )
    ans += 1
  end
end

puts ans