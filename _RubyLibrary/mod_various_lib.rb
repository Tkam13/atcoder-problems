## 組み合わせ
# n < 10**5まで使える
class Combination_mod_p
  def initialize(mod,max_num)
    @max_num = max_num
    @mod = mod

    @fac = Array.new(@max_num,0)
    @finv = Array.new(@max_num,0)
    @inv = Array.new(@max_num,0)

    @fac[0] = @fac[1] = 1
    @finv[0] = @finv[1] = 1
    @inv[1] = 1
    (2..@max_num-1).each do |i|
      @fac[i] = @fac[i-1]*i % @mod
      @inv[i] = @mod - @inv[@mod % i] * (@mod / i) % @mod
      @finv[i] = @finv[i - 1] * @inv[i] % @mod 
    end
  end

  def com(n,k)
    return 0 if n < k || (n < 0 || k < 0)

    return @fac[n] * (@finv[k] * @finv[n-k] % @mod) % @mod
  end
end

# k <= 10 ** 5まで、単発
require 'openssl'
def combination_mod(n,k,mod)
  if n < k || (n < 0 || k < 0)
    0
  elsif k == 0 || k == n
    1
  else
    k = n - k if k > n - k
    x = (n-k+1..n).inject{|res,i| res * i % mod}
    y = (1..k).inject{|res,i| res * i % mod}
    inv_y = OpenSSL::BN.new(y).mod_inverse(mod)
    x * inv_y % mod
  end
end

## 繰り返し2乗法
def mod_pow(base,n,mod)
  if n == 0
    res = 1
  elsif n == 1
    res = base
  elsif n % 2 == 0
    res = mod_pow(base,n/2,mod) ** 2 % mod
  else
    res = mod_pow(base,n-1,mod) * base % mod
  end
  res
end

##負の数もいけるMOD関数
def mod(a,mod)
  (a % mod + mod) % mod
end

puts combination_mod(10,0,10**9+7)