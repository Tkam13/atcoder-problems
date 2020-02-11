n,h = gets.chomp.split.map(&:to_i)
as = []
bs = []
cnt = 0
n.times do
  a,b = gets.chomp.split.map(&:to_i)
  as << a
  bs << b
end
as.sort!.reverse!
bs.sort!.reverse!
while h > 0
  if !bs.empty? && (as[0] < bs[0])
    cnt += 1
    h -= bs[0]
    bs.shift
  else
    if h % as[0] != 0
      cnt += 1
    end
    cnt += h / as[0]
    break
  end
end
puts cnt