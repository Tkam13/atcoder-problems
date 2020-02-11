n = gets.to_i
ts = n.times.map{gets.to_i}.sort
MOD = 10 ** 9 + 7
time = 0
penalty = 0
ans = 1
array = Array.new(10010,0)
ts.each do |t|
  time += t
  penalty += time
  array[t] += 1
end
array.each do |a|
  if a != 0
    ans *= (1..a).inject(:*)
  end
end
puts penalty
puts ans % MOD
