n,l = gets.chomp.split.map(&:to_i)
array = []
m = 1e9
(1..n).each do |i|
  array << l + i -1
  if m.abs > (l+i-1).abs
    m = l+i-1
  end
end
puts array.inject(:+)-m
