@h,@w,k = gets.chomp.split.map(&:to_i)
@s = @h.times.map{gets.chomp.chars}
empty_array = []
cnt = 1
def mark_num(i,j,n)
  if @s[i][j] != "." || j < 0 || j > @w - 1
    return
  else
    @s[i][j] = n
    mark_num(i,j - 1,n)
    mark_num(i,j + 1,n)
  end
end

def search_num_up(i)
  if i < 0 || i > @h - 1
    return 
  elsif @s[i][0] == "."
    search_num_up(i+1)
  else
    @num_array << i
  end
end

def search_num_down(i)
  if i < 0 || i > @h - 1
    return 
  elsif @s[i][0] == "."
    search_num_down(i-1)
  else
    @num_array << i
  end
end

(0..@h-1).each do |i|
  empty_flag = true
  (0..@w-1).each do|j|
    if @s[i][j] == "#"
      empty_flag = false
      @s[i][j] = cnt
      mark_num(i,j + 1,cnt)
      mark_num(i,j - 1,cnt)
      cnt += 1
    end
  end
  if empty_flag
    empty_array << i
  end
end

empty_array.each do |k|
  @num_array = []
  search_num_up(k)
  search_num_down(k)
  (0..@w-1).each do |l|
    @s[k][l] = @s[@num_array.min][l]
  end
end

@s.each do |c|
  puts c.join(" ")
end

  