n = gets.to_i
ans = "No"
(1..9).each do |i|
  if n % i == 0 && n / i < 10
    ans = "Yes"
  end
end

puts ans