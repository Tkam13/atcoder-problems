def binom(n,k)
  k = [k, n-k].min

  if k==0
     val = 1
  else
     val = binom(n-1,k-1)*n/k
  end

  return val
end

n,k = gets.chomp.split.map(&:to_i)
mod = (1e9+7).to_i
r = n - k

(1..k).each do |i|
  next puts 0 if i-1 > r
  cnt = 0
  cnt += binom(k-1,i-1) % mod
  cnt *= binom(r+1,r-i+1)
  puts cnt % mod
end

