n = gets.to_i
as = gets.chomp.split.map(&:to_i)
cnt = 0

as.each_with_index do |a,i|
  i += 1
  if i.odd? && a.odd?
    cnt += 1
  end
end

puts cnt
