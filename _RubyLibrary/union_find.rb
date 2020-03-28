class UnionFind
  def initialize n
    @rank = Array.new(n,0)
    @parent = Array.new(n,&:itself)
  end

  def get_root x
    @parent[x] == x ? x : get_root(@parent[x])
  end

  def unite x,y
    x,y = get_root(x),get_root(y)
    return if x == y
    x,y = y,x if @rank[x] < @rank[y]
    @parent[y] = x
    @rank[x] += 1 if @rank[x] == @rank[y]
  end

  def same_root? x,y
    get_root(x) == get_root(y)
  end
end

array = [[0,1],[3,4],[1,2],[0,4]]
uf = UnionFind.new(5)
array.each do |x,y|
  uf.unite(x,y)
end