h,w,k = gets.chomp.split.map(&:to_i)
chos = h.times.map{gets.chomp.split.map(&:to_i)}
(2 ** (h-1)).times do |n|
  sum = 0
  idx = Array.new(h, 0)
  (h-1).times do |j|
    sum += n[j]
    idx[j+1] = idx[j] + n[j]
  end
  p sum
  p idx
end