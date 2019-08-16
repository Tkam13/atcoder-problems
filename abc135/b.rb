n = gets.to_i
ps = gets.chomp.split.map(&:to_i)
cnt = 0
ps_sort = ps.sort
ps_sort.each_with_index do |p_sort,i|
  if p_sort != ps[i]
    cnt += 1
  end
end
puts (cnt == 2 || cnt == 0) ? "YES" : "NO"