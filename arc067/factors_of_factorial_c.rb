# nの階乗の素因数分解を二重配列で返す
def fact_fact(n)
  # nまでの素数を探す
  prime = Array.new(n+1,1)
  array = []
  (2..n).each do|i|
    if prime[i]
      (i*2).step(n,i) do |j|
        prime[j] = 0
      end
    end
  end

  (2..n).each do|i|
    if prime[i] == 1
      prime[i] = 0
      j = i
      cnt = 0
      while j <= n
        cnt += n / j
        j *= i
      end
      array << [i,cnt]
    end
  end
  return array
end

n = gets.to_i
MOD = 10 ** 9 + 7
array = fact_fact(n)
ans = 1
array.each do |a,b|
  ans *= b + 1
end
puts ans % MOD
