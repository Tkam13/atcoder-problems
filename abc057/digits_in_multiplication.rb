n = gets.to_i
def f(a,b)
  a.to_s.size > b.to_s.size ? a.to_s.size : b.to_s.size
end
ans = 10e10.to_i
1.upto(10e5.to_i) do |i|
  if n%i == 0
    ans = f(i,n/i) if ans > f(i,n/i)
  end
end
puts ans
