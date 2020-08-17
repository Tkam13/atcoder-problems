n = gets.to_i
as = gets.chomp.split.map(&:to_i)
money = 1000
stock = 0
(n-1).times do |i|
  if as[i] < as[i+1]
    stock += money / as[i]
    money -= as[i] * (money / as[i])
  elsif as[i] > as[i+1]
    money += stock * as[i]
    stock = 0
  end

  if i == n - 2
    money += stock * as[i+1]
    stock = 0
  end

end

puts money
