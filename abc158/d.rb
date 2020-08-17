s = gets.chomp.chars
q = gets.to_i
qs = q.times.map{gets.chomp.split}

reverse = false
qs.each do |i,f,c|
  if i == "1"
    reverse = !reverse
  end
  if i == "2"
    if (reverse && f == "2") || (!reverse && f == "1")
      s.unshift(c)
    else
      s.push(c)
    end
  end
end

if reverse
  s.reverse!
end

puts s.join