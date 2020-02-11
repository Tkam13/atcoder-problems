l,r = gets.chomp.split.map(&:to_i)
mod = 2019
ans = 2018
(l..r-1).each do |i|
  break if i > l + 2019
  (i+1..r).each do |j|
    break if j > l + 2019
    ans = [ans,(i*j) % mod].min
  end
end
puts ans

# 賢い書き方
# puts r - l < 2019 ? [*l..r].combination(2).map{|i,j|(i*j)%mod}.min : 0