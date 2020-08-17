n,x,y = gets.chomp.split.map(&:to_i)
obj = Hash.new{|h,k| h[k] = Hash.new(0)}
n.times do
	i,j = gets.chomp.split.map(&:to_i)
	obj[i][j] = 1
end

move = [[1,1],[-1,1],[0,1],[1,0],[-1,0],[0,-1]]
ans = 10 ** 18

def inside? n
	n <= 201 && -201 <= n
end
reached = Hash.new{|h,k| h[k] = Hash.new(0)}
queue = [[0,0,0]]
while !queue.empty?
	pos_x,pos_y,cnt = queue.shift
	reached[pos_x][pos_y] = 1
	if pos_x == x && pos_y == y
		ans = cnt if ans > cnt
	else
		cnt += 1
		move.each do |dx,dy|
			dx += pos_x
			dy += pos_y
			if inside?(dx) && inside?(dy) && obj[dx][dy] == 0 && reached[dx][dy] == 0
				queue << [dx,dy,cnt]
				p reached
				p [dx,dy,cnt]
			end
		end
	end
end

if ans == 10**18
	puts -1
else
	puts ans
end