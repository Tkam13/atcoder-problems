n = gets.to_i
x = gets.chomp.to_i(2)
# n = 2 * 10 ** 5
# x = (1 << n + 1) - 1

def popcount(bits)
  bits = (bits & 0x55555555) + (bits >> 1 & 0x55555555);
  bits = (bits & 0x33333333) + (bits >> 2 & 0x33333333);
  bits = (bits & 0x0f0f0f0f) + (bits >> 4 & 0x0f0f0f0f);
  bits = (bits & 0x00ff00ff) + (bits >> 8 & 0x00ff00ff);
  return (bits & 0x0000ffff) + (bits >>16 & 0x0000ffff);
end

fn = Array.new(n+1,0)

def bitmod(n)
  res = 0
  while n > 0
    bitcnt = popcount(n)
    n %= bitcnt
    res += 1
  end
  res
end

(1..n).each do |i|
  fn[i] = bitmod(i)
end


n.times do |i|
  l = n - 1 - i
  u = x ^ (1 << l)
  u %= popcount(u)
  p [u,fn[u]]
end
