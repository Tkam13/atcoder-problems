s = gets.chomp
ans = Array.new(s.size,0)
n = s.size
cnt_r = 0
cnt_l = 0
n.times do |i|
  if s[i] == "R"
    cnt_r += 1
  else
    ans[i] += cnt_r/2
    ans[i-1] += (cnt_r+1)/2
    cnt_r = 0
  end
end

n.times do |i|
  j = n - i - 1
  if s[j] == "L"
    cnt_l += 1
  else
    ans[j] += cnt_l/2
    ans[j+1] += (cnt_l+1)/2
    cnt_l = 0
  end
end

puts ans.join(" ")