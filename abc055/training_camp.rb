n = gets.to_i
mod = 1e9+7
p = 1
(1..n).each do |i|
  p = (p*i) % mod.to_i
end
puts p
