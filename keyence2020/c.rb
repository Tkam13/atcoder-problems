n,k,s = gets.chomp.split.map(&:to_i)
ans_array = Array.new(n)
cnt = 0
(0..k-1).each do |i|
  ans_array[i] = s
end
if s != 10**9
  (k..n-1).each do |j|
    ans_array[j] = 10**9
  end
else
  (k..n-1).each do |j|
    ans_array[j] = 10**9 - 1
  end
end
puts ans_array.join(" ")
  

