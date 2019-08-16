h,w = gets.chomp.split.map(&:to_i)
s = h.times.map{gets.chomp.chars}
0.upto(h-1) do |i|
  0.upto(w-1) do |j|
    cnt = 0
    if s[i][j] == '.'
      -1.upto(1) do |k|
        -1.upto(1) do |l|
          if 0 <= i+k && i+k <= h-1 && 0 <= j+l && j+l <= w-1
            cnt += 1 if s[i+k][j+l] == '#'
          end
        end
      end
      s[i][j] = cnt
    end
  end
end
s.each{|n| puts n.join}
