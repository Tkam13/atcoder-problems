n,k = gets.chomp.split.map(&:to_i)
s = gets.chomp.chars
array =[]
ans = []
cnt = 0
current = s[0]
s.each do |c|
  if c == current
    cnt += 1
  else
    current = c
    array.push(cnt)
    cnt = 1
  end
end 
array.push(cnt)
n = array.size
if s[0] == "0"
  (0..n-1).each do |i|
    if i.odd?
      next
    end
    if i-k < 0
      l = 0
    else
      l = i-k
    end
    if i+k < n
      r = i+k
    else
      r = n-1
    end
    ans << array[l..r].inject(:+)
  end

else
  (0..n-1).each do |i|
    if i.even?
      next
    end
    if i-k < 0
      l = 0
    else
      l = i-k
    end
    if i+k < n
      r = i+k
    else
      r = n-1
    end
    ans << array[l..r].inject(:+)
  end
end
p ans
p array