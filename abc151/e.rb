n,k = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i).sort
MOD = 10** 9 + 7
cnt_hash = {}
ans = 0
as.each do |a|
  if hash[a] == nil
    hash[a] = 1
  else
    hash[a] += 1
  end
end

