na,nb = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
bs = gets.chomp.split.map(&:to_i).sort
and_cnt = 0
as.each do |a|
  if bs.bsearch{|x| x >= a} == a
    and_cnt += 1
  end
end
puts and_cnt / (as.size + bs.size - and_cnt).to_f