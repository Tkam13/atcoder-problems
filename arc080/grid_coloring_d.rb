h,w = gets.chomp.split.map(&:to_i)
n = gets.to_i
as = gets.chomp.split.map(&:to_i)
ans = Array.new(h){Array.new(w,0)}
cur_x = 0
cur_y = 0

as.each_with_index do |a,i|
  a.times do
    ans[cur_y][cur_x] = i + 1
    if (cur_y.even? && cur_x == w -1) || (cur_y.odd? && cur_x == 0)
      cur_y += 1
    elsif cur_y.even?
      cur_x += 1
    elsif cur_y.odd?
      cur_x -= 1
    end
  end
end

ans.each do |s|
  puts s.join(" ")
end