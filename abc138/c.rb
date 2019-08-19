n = gets.to_i
vs = gets.chomp.split.map(&:to_i).sort
(n-1).times do
  first = vs.shift
  second = vs.shift
  mix = (first+second)/2.0
  vs.unshift(mix)
end
puts vs[0]