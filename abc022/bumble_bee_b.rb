n = gets.to_i
as = n.times.map{gets.to_i}
array = Array.new(n+1)
ans = 0
as.each do |a|
  if array[a] == nil
    array[a] = 1
  else
    ans += 1
  end
end

puts ans