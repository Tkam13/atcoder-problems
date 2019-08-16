s = gets.chomp.chars
array = []
ans = Array.new(s.size,0)
current = s[0]
s.each_with_index do |c,i|
  if current == "R" && c == "L"
    array << i
  end
  current = c
end
current = s[0]
s.shift
rc = 1
lc = 0
ans[array[0]-1] += 1
s.each do |c|
  if current == "R" && c == "R"
    rc += 1
    if rc.even?
      ans[array[0]] += 1
    else
      ans[array[0]-1] += 1
    end
  elsif current = "R" && c == "L"
    rc = 0
    lc += 1
    if lc.odd?
      ans[array[0]] += 1
    else
      ans[array[0]-1] += 1
    end
  elsif current = "L" && c == "R"
    lc = 0
    rc += 1
    array.shift
    if rc.even?
      ans[array[0]] += 1
    else
      ans[array[0]-1] += 1
    end
  elsif current = "L" && c == "L"
    lc += 1
    if lc.odd?
      ans[array[0]] += 1
    else
      ans[array[0]-1] += 1
    end
  end
  current = c
end
puts ans.join(" ")
 