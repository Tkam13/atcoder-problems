n = gets.to_i
as = gets.chomp.split.map(&:to_i)
cnt_4 = 0
cnt_2 = 0
cnt_odd = 0
as.each do |a|
  if a % 4 == 0
    cnt_4 += 1
  elsif a.odd?
    cnt_odd += 1
  else
    cnt_2 += 1
  end
end

cnt_odd += 1 if cnt_2.odd?

if cnt_odd <= cnt_4 + 1
  ans = "Yes"
else
  ans = "No"
end

puts ans