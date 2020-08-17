n,m = gets.chomp.split.map(&:to_i)
s,c = m.times.map{gets.chomp.split.map(&:to_i)}.transpose
ans = -1

(0..1000).each do |i|
  next if i.to_s.size != n
  flag = true
  m.times do |j|
    if i.to_s[s[j] - 1] != c[j].to_s
      flag = false
      break
    end
  end

  if flag
    ans = i
    break
  end
end

puts ans