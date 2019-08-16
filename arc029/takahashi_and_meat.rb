@n = gets.to_i
@ts = @n.times.map{gets.to_i}
@ans = 1e9.to_i
def dfs(i,sum1,sum2)
  if i == @n
    max = [sum1,sum2].max
    @ans = max if @ans > max
  else
    dfs(i+1,sum1 + @ts[i],sum2)
    dfs(i+1,sum1,sum2 + @ts[i])
  end
end
dfs(0,0,0)
puts @ans