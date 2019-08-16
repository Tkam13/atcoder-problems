s = gets.chomp
@ans = 0
def dfs(s,sum,count)
  if s.size == count 
    sum += s.to_i
    @ans += sum 
  else
    dfs(s,sum,count+1)
    dfs(s[count..-1],sum + s[0..count-1].to_i,1)
  end
end 

puts dfs(s,0,1)