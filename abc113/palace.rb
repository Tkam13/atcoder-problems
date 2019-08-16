n = gets.chomp.to_i
t,a = gets.strip.split.map(&:to_i)
hs = gets.strip.split.map(&:to_i)
ans = 0
most_near_abs = 10000
hs.each.with_index(1) do |h,i|
  th = (t - h*0.006)
  abs = (a - th).abs
  if abs < most_near_abs
    ans = i
    most_near_abs = abs
  end
end
puts ans
