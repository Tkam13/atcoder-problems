ss = gets.chomp.chars
ans = []
count = 0
flag = false
ss.each do |s|
  if s =="A" || s == "C" || s == "G" || s == "T"
    count += 1
  else
    ans << count
    count = 0
  end
end
ans << count
puts ans.max
