a,b,k = gets.chomp.split.map(&:to_i)
an = []
bn = []
(1..a).each do |i|
  if a % i == 0
    an << i
  end
end
(1..b).each do |i|
  if b % i == 0
    bn << i
  end
end
c = an & bn
puts c[-k]
