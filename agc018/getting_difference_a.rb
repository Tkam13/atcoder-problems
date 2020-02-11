n,k = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i).sort
array_abs = Array.new(n-1)
mod = as[0]
as.each_cons(2).with_index do |(a,b),i|
  if a - b != 0
    mod = [mod,(a - b).abs].min
  end
end
flag = false

as.each do |a|
  if a % mod == k % mod
    flag = true
    break
  end
end

if flag && as[-1] >= k
  puts "POSSIBLE"
else
  puts "IMPOSSIBLE"
end