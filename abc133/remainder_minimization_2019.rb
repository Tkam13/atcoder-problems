l,r = gets.chomp.split.map(&:to_i)
mod = 2019
if r - l >= 2018
  ans = 0
else
  array = []
  (l..r).each do |i|
    array << i%mod
  end
  array.sort!
  ans = array[0]*array[1]%mod
end
puts ans 