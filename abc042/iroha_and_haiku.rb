is = gets.chomp.split.map(&:to_i)
f = s = 0
is.each do |i|
  if i == 5
    f += 1
  elsif i == 7
    s += 1
  end
end
puts f == 2 && s == 1 ? "YES" : "NO"
