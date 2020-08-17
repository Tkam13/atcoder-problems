n,m = gets.chomp.split.map(&:to_i)

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

	def size
		@size
	end
end

union = UnionFind.new(n)
m.times do
	x,y,z = gets.chomp.split.map(&:to_i)
	union.unite(x-1,y-1)
end

puts union.size