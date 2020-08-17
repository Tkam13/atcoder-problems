n,m,k = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
bs = gets.chomp.split.map(&:to_i)
ans = 0
as_sum = [0]
bs_sum = [0]

as.each do |a|
  as_sum << as_sum[-1] + a
end

bs.each do |b|
  bs_sum << bs_sum[-1] + b
end

as_sum.each_with_index do |a,i|
  break if a > k
  idx = bs_sum.bsearch_index{|x| x + a > k}
  if idx.nil?
    idx = m + 1
  end
  idx -= 1
  ans = idx + i if ans < idx + i
end

puts ans
