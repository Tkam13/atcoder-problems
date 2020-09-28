n = gets.to_i
reds = n.times.map{gets.chomp.split.map(&:to_i)}
blues = n.times.map{gets.chomp.split.map(&:to_i)}
cnt = 0

reds.each_with_index do |r,i|
  reds[i] << r[0]**2 + r[1]**2
end
blues.each_with_index do |b,i|
  blues[i] << b[0]**2 + b[1]**2
end
reds.sort_by!(&:last).reverse!
blues.sort_by!(&:last)

n.times do
  b = blues.shift
  n.times do
    r = reds.shift
    if b[0] - r[0] > 0 && b[1] - r[1] > 0
      cnt += 1
      break
    else
      reds << r
    end
  end
end
puts cnt
