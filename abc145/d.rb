x,y = gets.chomp.split.map(&:to_i)
mod = 1000000007
ans = 0
max_num = 1000010

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

if (-x + 2*y) % 3 == 0 && (2*x - y) % 3 == 0
  combination = Combination_mod_p.new(mod,max_num)
  r_n = (-x + 2*y)/3
  u_n = (2*x - y)/3
  sum = r_n + u_n
  if r_n > u_n
    ans = combination.com(sum,u_n)
  else
    ans = combination.com(sum,r_n)
  end
end

puts ans