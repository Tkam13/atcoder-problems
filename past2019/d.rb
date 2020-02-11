n = gets.to_i
as = n.times.map{gets.to_i}.sort
ans = []
check = Array.new(n,0)

as.each do|a|
  check[a-1] += 1
end

check.each_with_index do |c,i|
  if c == 0
    ans.push(i+1)
  elsif c == 2
    ans.unshift(i+1)
  end
end
puts ans.empty? ? "Correct" : ans.join(" ")
