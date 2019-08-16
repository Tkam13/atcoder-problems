n,k = gets.chomp.split.map(&:to_i)
ans = 0
(1..n).each do |i|
  if i<k
    ans += n**(-1)*2**-Math.log2(k/i).ceil
  else
    ans += n**(-1)
  end
end
puts ans.to_f