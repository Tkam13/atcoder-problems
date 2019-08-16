@n = gets.to_i
ts = (@n-1).times.map{gets.chomp.split.map(&:to_i)}
@cs = gets.chomp.split.map(&:to_i).sort
ans_num = @cs.inject(:+) - @cs.max
ans_string = ""
@ans = Array.new(@n)
@graph = Array.new(@n){Array.new(@n,0)}
ts.each do |a,b|
  @graph[a-1][b-1] += 1
  @graph[b-1][a-1] += 1
end

def dfs(i,j)
  if i == @n || i < 0 
    return
  elsif j == @n
    @ans[i] = @cs.pop
    dfs(i-1,0)
  elsif
    if @graph[i][j] != 0
      @ans[i] = @cs.pop
      @graph[i][j] = @graph[j][i] = 0
      dfs(j,0)
    else
      dfs(i,j+1)
    end
  end
end
p @graph
dfs(0,0)
@ans.each do |a|
  ans_string += "#{a}" + " "
end
puts ans_num
puts ans_string.chomp
