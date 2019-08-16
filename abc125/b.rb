n = gets.to_i
vs = gets.chomp.split.map(&:to_i)
cs = gets.chomp.split.map(&:to_i)
as = [0]

(0..n-1).each do |i|
  if vs[i] - cs[i] > 0
    as << vs[i] - cs[i]
  end
end
puts as.inject(:+)
