n = gets.to_i
as = gets.chomp.split.map(&:to_i)
MOD = 10**9 + 7
array = Array.new(n,0)
flag = true
as.each do |i|
  array[i] += 1
end
(0..n-1).each do|i|
  if n.even?
    if (i.odd? && array[i] != 2) || (i.even? && array[i] != 0)
      flag = false
    end
  else
    if (i == 0 && array[i] != 1) || (i.odd? && array[i] != 0) || (i != 0 && i.even? && array[i] != 2)
      flag = false
    end
  end
end
puts flag ? 2 ** (n/2) % MOD : 0