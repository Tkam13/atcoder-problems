a,b,c = gets.chomp.split.map(&:to_i)
@cnt = 0
def max(a,b,c)
  max = [a,b,c].max
  [a,b,c].each do |i|
    @cnt += (max - i)/2
  end
end

if a%2 == b%2 && b%2 == c%2
   max(a,b,c)
else
  @cnt += 1
  if a%2 == b%2
    a += 1
    b += 1
    max(a,b,c)
  elsif b%2 == c%2
    b += 1
    c += 1
    max(a,b,c)
  else
    c += 1
    a += 1
    max(a,b,c)
  end
end
puts @cnt
