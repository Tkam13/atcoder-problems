n = gets.to_i
memo = Array.new(n+1,0)
(1..n).each do |i|
  (1..n/i).each do |j|
    memo[i*j] += 1
  end
end

p memo
