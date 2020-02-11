n = gets.to_i
as = gets.chomp.split.map(&:to_i)
MOD = 10**9+7
sum = 0
num_lcm = 1
as.each do |a|
  num_lcm = num_lcm.lcm(a)
end
as.each do |a|
  sum += num_lcm / a
end
puts sum % MOD
