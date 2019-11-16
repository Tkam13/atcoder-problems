@fac = Array.new(MAX,0)
@finv = Array.new(MAX,0)
@inv = Array.new(MAX,0)
MAX = 1000010

def com_init(mod)
  @fac[0] = @fac[1] = 1
  @finv[0] = @finv[1] = 1
  @inv[1] = 1
  (2..MAX-1).each do |i|
    @fac[i] = @fac[i-1]*i % mod
    @inv[i] = mod - @inv[mod % i] * (mod / i) % mod
    @finv[i] = @finv[i - 1] * @inv[i] % mod 
  end
end

def com(n,k,mod)
  if n < k
    return 0
  end
  if n < 0 || k < 0
    return 0
  end
  return @fac[n] * (@finv[k] * @finv[n-k] % mod) % mod
end