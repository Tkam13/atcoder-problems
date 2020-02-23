n,a,b = gets.chomp.split.map(&:to_i)
MOD = 10 ** 9 + 7
def mod_pow(base,n,mod)
  if n == 1
    res = base
  elsif n % 2 == 0
    res = mod_pow(base,n/2,mod) ** 2 % mod
  else
    res = mod_pow(base,n-1,mod) * base % mod
  end
  res
end

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

def mod(a,mod)
  (a % mod + mod) % mod
end

all = mod_pow(2,n,MOD) - 1
puts mod(all - combination_mod(n,a,MOD) - combination_mod(n,b,MOD),MOD)