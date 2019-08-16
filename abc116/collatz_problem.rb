s = gets.to_i
def f(n)
  cnt = 1
  ns =[]
  loop do
    break if ns.include?(n)
    ns.push(n)
    if n.even?
      n = n/2
      cnt += 1
    else
      n = 3*n+1
      cnt += 1
    end
  end
  return cnt
end
puts f(s)
