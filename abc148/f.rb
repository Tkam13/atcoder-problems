n,u,v = gets.chomp.split.map(&:to_i)
@tree = Array.new(n){Array.new}
@leng_t = Array.new(n,-1)
@leng_a = Array.new(n,-1)
@ans = 0
(n-1).times do
  a,b = gets.chomp.split.map(&:to_i)
  @tree[a-1] << b-1
  @tree[b-1] << a-1
end

def dfs_t(i , cnt)
  @leng_t[i] = cnt
  que = Array.new(@tree[i])
  while !que.empty?
    if @leng_t[que[0]] == -1
      dfs_t(que[0] , cnt + 1)
    end
    que.shift
  end
end

def dfs_a(i,cnt)
  @leng_a[i] = cnt
  que = Array.new(@tree[i])
  if cnt > @leng_t[i]
    @ans = [@ans , cnt].max
  end
  while !que.empty?
    if @leng_a[que[0]] == -1
      dfs_a(que[0],cnt + 1)
    end
    que.shift
  end
end

dfs_t(u-1,0)
dfs_a(v-1,0)

puts @ans - 1