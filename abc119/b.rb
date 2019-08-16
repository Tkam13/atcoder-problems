n = gets.to_i
_s = n.times.map{gets.chomp.split.map(&:to_s)}
sum = 0
_s.each do |i,s|
  if s == "BTC"
    sum += i.to_f * 380000.0
  else
    sum += i.to_f
  end
end
puts sum
