a,b = gets.chomp.split.map(&:to_i)
n = b.to_s(2).size
as = Array.new(n)
bs = Array.new(n)
(1..n).each do |i|
  if ((b+1)/(2**(i-1))).even?
    bs[i] = 0
  else
    if ((b+1)%(2**(i-1))).even?
      bs[i] = 0
    else
      bs[i] = 1
    end
  end
  if (a/(2**(i-1))).even?
    as[i] = 0
  else
    if (a % (2**(i-1))).even?
      as[i] = 0
    else
      as[i] = 1
    end
  end
end
as[1] = (a/2).odd? ? 1 : 0
bs[1] = ((b+1)/2).odd? ? 1 : 0
a = as.reverse.join.to_i(2)
b = bs.reverse.join.to_i(2)
puts a ^ b
