h,w = gets.chomp.split.map(&:to_i)
s = h.times.map{gets.chomp.chars}
memo_w = Array.new(h){Array.new(w,0)}
memo_h = Array.new(h){Array.new(w,0)}
ans = 0
(0..h-1).each do|i|
  cnt_w = 0
  start_j = 0
  (0..w-1).each do |j|
    if s[i][j] == "."
      cnt_w += 1
    end

    if s[i][j] == "#" || j == w - 1
      (start_j..j).each do |j_dash|
        memo_w[i][j_dash] = cnt_w
      end
      if s[i][j] == "#"
        memo_w[i][j] = 0
      end
      start_j = j + 1
      cnt_w = 0
    end
  end
end

(0..w-1).each do|j|
  cnt_h = 0
  start_i = 0
  (0..h-1).each do |i|
    if s[i][j] == "."
      cnt_h += 1
    end

    if s[i][j] == "#" || i == h - 1
      (start_i..i).each do |i_dash|
        memo_h[i_dash][j] = cnt_h
      end
      if s[i][j] == "#"
        memo_h[i][j] = 0
      end
      start_i = i + 1
      cnt_h = 0
    end
  end
end

(0..h-1).each do |i|
  (0..w-1).each do |j|
    ans = [ans , memo_h[i][j] + memo_w[i][j] - 1].max
  end
end
puts ans
# memo_h.each do |h|
#   p h
# end
# memo_w.each do |w|
#   p w
# end