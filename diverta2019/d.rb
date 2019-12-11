n = gets.to_i
ans = 0
(1..n**0.5).each do|i|
  if n%i == 0
    if i-1 !=0
      if n % (i-1) == n/(i-1)
        ans += (i - 1)
      end
    end
    if n % (n/i-1) == n/(n/i-1)
       ans += (n/i - 1)
    end
  end
end
puts ans