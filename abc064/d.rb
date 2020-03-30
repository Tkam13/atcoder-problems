n = gets.to_i
s = gets.chomp.chars
cl = 0
cr = 0
ans = s.dup
s.each do |c|
  if c == ')' 
    if cl > 0
      cl -= 1
    else
      ans.unshift('(')
    end
  else
    cl += 1
  end
end
cl.times do
  ans.push(")")
end
puts ans.join
