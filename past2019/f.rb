def capital?(c)
  flag = false
  ("A".."Z").each do |check|
    if c == check
      flag = true
    end
  end
  return flag
end

s = gets.chomp
start_index = 0
flag = true
ans = []
(0..s.size).each do |i|
  if capital?(s[i])
    if flag
      start_index = i
      flag = false
    else
      ans << s.slice(start_index..i)
      flag = true
    end
  end
end
puts ans.sort{|a,b| a.upcase <=> b.upcase}.join("")
