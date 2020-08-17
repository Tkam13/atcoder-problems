a,b,n = gets.chomp.split.map(&:to_i)

i = [n,b-1].min

l = (a/b.to_f * i).floor
r = a * (i / b.to_f).floor

puts l - r
