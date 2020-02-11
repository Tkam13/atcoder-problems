n = gets.to_i
xs = gets.chomp.split.map(&:to_i)
MOD = 10**9 + 7
ans = 0
h_sum = 0
xs.each_cons(2).with_index(1) do |x,k|
  dist = x[1] - x[0]
  h_sum += 1/k.to_f
  ans += dist * h_sum
end
puts (ans * fact % MOD).to_i
