n = gets.to_i
as = gets.chomp.split.map(&:to_i)
cnt = 0
as.each do |a|
  a.even? ? nil : cnt += 1
end
puts cnt.even? ? "YES" : "NO"
