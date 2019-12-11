# 自分で書いたコード

# n,k = gets.chomp.split.map(&:to_i)
# as = gets.chomp.split.map(&:to_i)
# cnt = 0
# array = Array.new(n+2,0)
# as.each_with_index do |a,i|
#   array[i+1] = array[i] + a
# end
# right = 1
# (0..n).each do |i|
#   flag = false
#   (right..n).each do |j|
#     if array[j] - array[i] >= k
#       cnt += n - j + 1
#       flag = true
#       right = j
#       break
#     end
#   end
#   break if flag == false
# end

# puts cnt

# 参考になったコード https://atcoder.jp/contests/abc130/submissions/5961784

n,k = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
# 半開区間で考える、しきるの組み合わせは全部でn+1Cr個
ans = n*(n+1)/2
s = 0
l = 0
n.times do |i|
  s += a[i]
  while s >= k
    s -= a[l]
    l += 1
  end
  ans -= i-l+1
end
puts ans