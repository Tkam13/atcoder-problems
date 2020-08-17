n = gets.to_i
cs = gets.chomp.chars
l = 0
r = n - 1
cnt = 0
while l != r
  if cs[l] == "W"
    if cs[r] == "R"
      cnt += 1
      cs[l] = "R"
      cs[r] = "W"
    else
      r -= 1
    end
  else
    l += 1
  end
end

puts cnt
