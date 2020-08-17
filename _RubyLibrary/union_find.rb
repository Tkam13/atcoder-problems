class UnionFind
	def initialize n
		@parent = Array.new(n,&:itself)
		@rank = Array.new(n,0)
		@size = n
	end

	def get_parent n
		@parent[n] == n ? n : get_parent(@parent[n])
	end

	def unite x,y
		x = get_parent(x)
		y = get_parent(y)
		if x != y
			if @rank[x] < @rank[y]
				@parent[x] = y
			else
				@parent[y] = x
				@rank[x] += 1 if @rank[x] == @rank[y]
			end
			@size -= 1
		end
  end
  
  def same_parent? x,y
    get_parent(x) == get_parent(y)
  end

	def size
		@size
	end
end

array = [[0,1],[3,4],[1,2],[0,4]]
uf = UnionFind.new(5)
array.each do |x,y|
  uf.unite(x,y)
end