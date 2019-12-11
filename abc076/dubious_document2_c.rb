s = gets.chomp
t = gets.chomp
ans_flag = false
ans = []
(0..s.size - t.size).each do|i|
  a = s.slice(i,t.size)
  (0..t.size-1).each do |k|
    if a[k] == t[k] || a[k] == "?"
      ans_flag = true
    else
      ans_flag = false
      break
    end
  end

  if ans_flag
    temp = String.new(s)
    temp[i,t.size] = t
    ans << temp.gsub(/\?/,"a")
  end
end
ans.sort!
puts ans.empty? ? "UNRESTORABLE" : ans[0]