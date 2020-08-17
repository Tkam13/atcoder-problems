n,m,k = gets.chomp.split.map(&:to_i)
MOD = 998244353
ans = 0
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

combi = Combination_mod_p.new(MOD,n)

(k+1).times do |i|
  ans += m * mod_pow(m-1,n-i-1,MOD) * combi.com(n-1,i)
  ans %= MOD
end

puts ans