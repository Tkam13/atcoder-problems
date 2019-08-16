@s = gets.chomp

def dfs(i,sum,ans)
  if i == 4
    if sum == 7
      puts ans + "=7"
      exit
    end
  else
    dfs(i+1,sum + @s[i].to_i,ans + "+" + @s[i])
    dfs(i+1,sum - @s[i].to_i,ans + "-" + @s[i])
  end
end

dfs(1,@s[0].to_i,@s[0])