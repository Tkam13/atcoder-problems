cs = 3.times.map{gets.chomp.split.map(&:to_i)}
d1 = [[0,0],[1,1],[2,2]].map{|i,j| cs[i][j]}.inject(:+)
d2 = [[0,2],[1,1],[2,0]].map{|i,j| cs[i][j]}.inject(:+)
d3 = [[0,1],[1,2],[2,0]].map{|i,j| cs[i][j]}.inject(:+)
d4 = [[0,2],[1,0],[2,1]].map{|i,j| cs[i][j]}.inject(:+)
if [d1,d2,d3,d4].uniq.size == 1
	puts "Yes"
else
	puts "No"
end