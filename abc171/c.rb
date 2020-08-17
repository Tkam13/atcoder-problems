n = gets.to_i
as = [*"a".."z"]
num = []
while n > 0
  n -= 1
  num.unshift(n % 26)
  n /= 26
end

puts num.map{|a| as[a]}.join
