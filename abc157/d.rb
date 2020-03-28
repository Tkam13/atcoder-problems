class UnionFind
  def initialize n
    @size = Array.new(n,1)
    @parent = Array.new(n,&:itself)
  end

  def get_root x
    @parent[x] == x ? x : get_root(@parent[x])
  end

  def unite x,y
    x = get_root(x)
    y = get_root(y)
    return if x == y
    x,y = y,x if @size[x] < @size[y]
    @size[x] += @size[y]
    @parent[y] = x 
  end

  def same_root? x,y
    return get_root(x) == get_root(y)
  end

  def size x
    return @size[get_root(x)]
  end
end
n,m,k = gets.chomp.split.map(&:to_i)
uf = UnionFind.new(n+1)
frientCnt = Array.new(n+1,0)
blockCnt = Array.new(n+1,0)
m.times do
  a,b = gets.chomp.split.map(&:to_i)
  uf.unite(a,b)
  frientCnt[a] += 1
  frientCnt[b] += 1
end
k.times do
  c,d = gets.chomp.split.map(&:to_i)
  if uf.same_root?(c,d)
    blockCnt[c] += 1
    blockCnt[d] += 1
  end
end
ans = []
1.upto(n) do |i|
  ans << uf.size(i) - frientCnt[i] - blockCnt[i] - 1
end
puts ans.join(" ")