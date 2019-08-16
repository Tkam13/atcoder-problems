@d,@g = gets.chomp.split.map(&:to_i)
@ps,@cs = @d.times.map{gets.chomp.split.map(&:to_i)}.transpose
@ans = []
def dfs(i,sum,count,b)
  if i == @d
    if sum < @g
      index = b.rindex("0")
      n = (@g - sum)/((index + 1)*100)
      add_count = (@g - sum) % ((index + 1)*100) == 0 ? n : n + 1
      if add_count <= @ps[index]
        @ans << count + add_count
      end
    else 
      @ans << count 
    end
  else
    dfs(i+1,sum + @ps[i]*(i+1)*100 + @cs[i] ,count + @ps[i],b+"1")
    dfs(i+1,sum,count,b+"0")
  end
end

dfs(0,0,0,"")
puts @ans.min