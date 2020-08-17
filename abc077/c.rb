n = gets.to_i
as = gets.chomp.split.map(&:to_i).sort
bs = gets.chomp.split.map(&:to_i).sort
cs = gets.chomp.split.map(&:to_i).sort

cnt = 0

bs.each do |b|
  a_idx = as.bsearch_index{|x| x >= b} || n
  c_idx = cs.bsearch_index{|x| x > b} || n
  cnt += a_idx * (n - c_idx) 
end

puts cnt
