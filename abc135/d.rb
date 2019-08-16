s = "?"*10**5
mod = 1e9+7
i = 0
n = 5
while n.to_s.size < s.size
  i += 1
  n += 13
end
puts i
