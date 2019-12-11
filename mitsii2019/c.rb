x = gets.to_i
under_two = x % 100
over_two = x / 100
cnt = 0

(1..5).reverse_each do |i|
  cnt += under_two / i
  under_two %= i
end

puts cnt > over_two ? "0" : "1"