n = gets.to_i
max_i = 1
(2..Math.sqrt(n)).each do |i|
  if n % i == 0
    max_i = i
  end
end

puts max_i + n / max_i - 2